import 'package:ask_terminal/ask_terminal.dart';

void main() {
  String colorCode = prompter.askMultiple('What color do you like?', [
    new Option('white', '#ffffff'),
    new Option('black', '#000000'),
    new Option('red', '#ff0000'),
    new Option('green', '#00ff00'),
    new Option('blue', '#0000ff'),
  ]); // returns option.value (ex: '#ffffff')


  bool learnDart = prompter.askBinary('Do you want to learn Dart for Web?'); // retruns bool (ex: true)

  print('liked color: $colorCode');
  print('I want to learn dart: $learnDart');
}
