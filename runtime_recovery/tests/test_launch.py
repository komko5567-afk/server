import unittest

from recovered_runtime.launch import parse_launch_command


class LaunchTests(unittest.TestCase):
    def test_magic_launch_contract_parses_defines_and_paths(self):
        launch = parse_launch_command(
            "./magic_Linux32 /r ./ /e /aaa/pack_data/lib_aaa32.pak/aaa/start_aaa.o "
            "/b /aaa/pack_data/lib_aaa32.pak /D _RELEASE /D AUTH= /s 32 "
            "--max-process 128 --enable-socket-daemon 0"
        )

        self.assertEqual(launch.executable, "./magic_Linux32")
        self.assertEqual(launch.root, "./")
        self.assertEqual(launch.entry, "/aaa/pack_data/lib_aaa32.pak/aaa/start_aaa.o")
        self.assertEqual(launch.base, "/aaa/pack_data/lib_aaa32.pak")
        self.assertEqual(launch.defines["_RELEASE"], "1")
        self.assertEqual(launch.defines["AUTH"], "")
        self.assertEqual(launch.stack_size, 32)
        self.assertEqual(launch.max_process, 128)
        self.assertEqual(launch.enable_socket_daemon, 0)

    def test_driver_launch_contract_parses_service_options(self):
        launch = parse_launch_command("./driver -r service -o auth_srv.o -e pwd.o -w awk_pwdi -p 6666")

        self.assertEqual(launch.executable, "./driver")
        self.assertEqual(launch.service_root, "service")
        self.assertEqual(launch.object_file, "auth_srv.o")
        self.assertEqual(launch.eval_object, "pwd.o")
        self.assertEqual(launch.worker_name, "awk_pwdi")
        self.assertEqual(launch.port, 6666)
