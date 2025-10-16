// lib/monitor.dart
// Example usage: Monitor m = Monitor(name: 'UltraView', resolution: '1920x1080');

class Monitor {
  String name;
  String resolution;

  Monitor({this.name = 'Monitor-Std', this.resolution = '1920x1080'});

  void display(String content) {
    print('[$name] display -> ($resolution): $content');
  }
}
