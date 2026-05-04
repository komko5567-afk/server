from pathlib import Path
import tempfile
import unittest

from recovered_runtime.assets import PakResolver
from recovered_runtime.manifest import build_manifest


class ManifestAssetTests(unittest.TestCase):
    def test_manifest_classifies_recovered_assets(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            tmp_path = Path(temp_dir)
            (tmp_path / "aaa").mkdir()
            (tmp_path / "aaa" / "runaaa").write_text("./magic_Linux32 /r ./ /e /x/start.o /b /x\n")
            (tmp_path / "server.ini").write_text("[server]\n")
            (tmp_path / "table.list").write_text("id name\n")
            (tmp_path / "schema.sql").write_text("create table t(id int);\n")
            (tmp_path / "script.c").write_text("public void main() {}\n")

            manifest = build_manifest(tmp_path)

            self.assertEqual(manifest.counts, {"launcher": 1, "config": 1, "data": 1, "sql": 1, "source": 1})
            self.assertEqual(manifest.launchers[0]["entry"], "/x/start.o")

    def test_pak_resolver_reads_unpacked_package_file(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            tmp_path = Path(temp_dir)
            package = tmp_path / "gs" / "pack_data" / "un_pack_data" / "etc.pak"
            package.mkdir(parents=True)
            (package / "hello.list").write_text("ok", encoding="utf-8")

            resolver = PakResolver(tmp_path)

            self.assertEqual(resolver.read_text("/any/virtual/hello.list"), "ok")
