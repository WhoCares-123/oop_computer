// lib/keyboard.dart
// Example usage: Keyboard kb = Keyboard(name: 'Logitech', layout: 'QWERTY');

class Keyboard {
  String name;
  String layout;

  Keyboard({this.name = 'Keyboard-Std', this.layout = 'QWERTY'});

  void typeKey(String key) {
    print('[$name] typeKey -> ($layout): Key "$key" pressed.');
  }
}
