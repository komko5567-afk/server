from pathlib import Path
import unittest

from recovered_runtime.host import HostContext
from recovered_runtime.interpreter import Ref, ScriptRuntime, UNDEFINED


class InterpreterTests(unittest.TestCase):
    def test_recovered_answer_script_computes_by_ref_values(self):
        source = Path("../gs/gs/pack_data/un_pack_data/etc.pak/ac_combat_answer.c").read_text(
            encoding="utf-8",
            errors="replace",
        )
        host = HostContext(seed=7)
        runtime = ScriptRuntime.from_source(source, builtins=host.builtins())
        question = Ref()
        answer = Ref()

        runtime.call("get_question_answer", question, answer)

        self.assertIsNot(question.value, UNDEFINED)
        self.assertEqual(answer.value, ((question.value * 7 ^ 0x8587833 + 1933) & 0x7FFFFFFF))

    def test_threaded_setter_path_uses_host_thread_id_and_globals(self):
        source = """
        int _answer = UNDEFINED;
        public void set_answer_by_question(int question)
        {
            if (get_thread_id() == 0)
            {
                create_thread(0, (: set_answer_by_question :), question);
                return;
            }
            _answer = (question * 7 ^ 0x8587833 + 1933) & 0x7FFFFFFF;
        }
        """
        host = HostContext(seed=1)
        runtime = ScriptRuntime.from_source(source, builtins=host.builtins())

        runtime.call("set_answer_by_question", 123)

        self.assertEqual(runtime.globals.ref("_answer").value, ((123 * 7 ^ 0x8587833 + 1933) & 0x7FFFFFFF))
