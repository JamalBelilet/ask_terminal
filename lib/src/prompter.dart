import 'option.dart';
import 'terminal.dart';

final Terminal _terminal = const Terminal();

class _Prompter {
  const _Prompter();

  String _ask(String question, [List<Option> options = const [], String err]) {
    _terminal.clearScreen();
    if (err != null) _terminal.printPrompt('$err');
    _terminal.printPrompt(question);
    _terminal.printOptions(options);
    return _terminal.collectInput();
  }

  bool askBinary(String question) {
    return (_ask('$question (y/n)').contains('y'));
  }

  dynamic askMultiple(String question, List<Option> options, [String err]) {
    try {
      return options[int.parse(_ask(question, options, err))].value;
    } catch (err) {
      return askMultiple(question, options, 'Enter a valid option !!!');
    }
  }
}

final _Prompter prompter = const _Prompter();
