// lib/monitor.dart
class Monitor {
  String model;
  double sizeInInches;

  // Example:
  // var mon = Monitor(model: 'UltraView', sizeInInches: 24.0);
  // mon.turnOn();
  // mon.display('Welcome');

  Monitor({this.model = 'StdMonitor', this.sizeInInches = 21.5});

  void turnOn() {
    print('[Monitor] $model: turning on (${sizeInInches.toStringAsFixed(1)}")');
  }

  void display(String content) {
    print('[Monitor] $model: display -> "$content"');
  }
}
