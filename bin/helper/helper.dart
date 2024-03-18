import 'dart:convert';

enum ConsoleColor {
  black,
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
}

extension Logger on Object {
  void logger(
      {String message = '', ConsoleColor color = ConsoleColor.red}) {
    print('\x1B[38;5;${_colorCode(color)}m$message${jsonEncode(this)}\x1B[0m');
  }

  int _colorCode(ConsoleColor color) {
    switch (color) {
      case ConsoleColor.black:
        return 0;
      case ConsoleColor.red:
        return 1;
      case ConsoleColor.green:
        return 2;
      case ConsoleColor.yellow:
        return 3;
      case ConsoleColor.blue:
        return 4;
      case ConsoleColor.magenta:
        return 5;
      case ConsoleColor.cyan:
        return 6;
      case ConsoleColor.white:
        return 7;
    }
  }
}
