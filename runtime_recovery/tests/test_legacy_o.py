from pathlib import Path
import tempfile
import unittest

from recovered_runtime.legacy_compile import LegacySourceCompiler
from recovered_runtime.legacy_o import LegacyObject, index_samples, opcode_histogram


PACKAGE_ROOT = Path("../gs/gs/pack_data/un_pack_data/lib_gs32.pak")
RAW_USER = PACKAGE_ROOT / "gs/clone/char/raw_user.o"
MIXED_AGENT = PACKAGE_ROOT / "clone/misc/mixed_agent.o"


@unittest.skipUnless(RAW_USER.exists(), "legacy .o samples are not available")
class LegacyObjectTests(unittest.TestCase):
    def test_index_samples_finds_legacy_objects(self):
        samples = index_samples(PACKAGE_ROOT)

        self.assertGreater(len(samples), 100)
        self.assertTrue(any(sample.path.endswith("raw_user.o") for sample in samples))

    def test_disassembler_extracts_strings_and_header(self):
        legacy_object = LegacyObject.read(RAW_USER)
        ir = legacy_object.to_ir()

        self.assertEqual(ir.size, RAW_USER.stat().st_size)
        self.assertIn("restore_raw", ir.suspected_symbols)
        self.assertTrue(any(path.endswith(".c") for path in ir.suspected_paths))
        self.assertTrue(ir.header.prefix_hex.startswith("01 00 01 00"))

    def test_roundtrip_writer_is_byte_identical(self):
        legacy_object = LegacyObject.read(MIXED_AGENT)
        with tempfile.TemporaryDirectory() as temp_dir:
            output = Path(temp_dir) / "mixed_agent.o"
            legacy_object.write(output)

            self.assertEqual(MIXED_AGENT.read_bytes(), output.read_bytes())

    def test_template_backed_assembler_is_byte_identical(self):
        template = LegacyObject.read(MIXED_AGENT)
        ir = template.to_ir(include_raw=True)
        assembled = LegacyObject.from_ir(ir)

        self.assertEqual(template.to_bytes(), assembled.to_bytes())

    def test_opcode_histogram_reports_prefixes(self):
        histogram = opcode_histogram([MIXED_AGENT, RAW_USER])

        self.assertEqual(histogram["file_count"], 2)
        self.assertGreater(histogram["total_bytes"], 0)
        self.assertTrue(histogram["common_prefixes"])


class LegacyCompilerTests(unittest.TestCase):
    def test_source_compiler_emits_auditable_ir(self):
        source = """
        public int main()
        {
            return (1 + 2) & 3;
        }
        """

        ir = LegacySourceCompiler().compile_source(source)

        self.assertEqual(ir.functions[0].name, "main")
        self.assertIn("stmt:return", ir.required_features)
        self.assertIn("op:&", ir.required_features)
