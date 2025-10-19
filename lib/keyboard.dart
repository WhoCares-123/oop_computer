// lib/keyboard.dart
class Keyboard {
  String layout;
  bool backlight;

  // Example:
  // var kb = Keyboard(layout: 'QWERTY', backlight: false);
  // kb.enable();
  // kb.type('hello');

  Keyboard({this.layout = 'QWERTY', this.backlight = true});

  void enable() {
    print('[Keyboard] $layout: enabled (backlight: ${backlight ? "on" : "off"})');
  }

  void type(String text) {
    print('[Keyboard] $layout: typing -> "$text"');
  }
}
