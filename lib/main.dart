// lib/main.dart
import 'computer.dart';
import 'cpu.dart';
import 'monitor.dart';
import 'keyboard.dart';

void main() {
  print('--- Demo: Computer Composition (Task 5) ---\n');

  // Create part objects
  var cpu = CPU(model: 'Ryzen-5', cores: 6, frequencyGhz: 3.6);
  var monitor = Monitor(model: 'UltraView', sizeInInches: 24.0);
  var keyboard = Keyboard(layout: 'QWERTY', backlight: true);

  // Inject the parts into the container (constructor injection)
  var myPC = Computer(
    model: 'Workstation-1',
    cpu: cpu,
    monitor: monitor,
    keyboard: keyboard,
  );

  // Demonstrate composition + delegation
  print('--- Action: boot() ---');
  myPC.boot();

  print('--- Action: runTask("Render Job") ---');
  myPC.runTask('Render Job');

  print('--- Action: runTask("Compile Project") ---');
  myPC.runTask('Compile Project');
}
