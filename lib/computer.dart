// lib/computer.dart
import 'cpu.dart';
import 'monitor.dart';
import 'keyboard.dart';

class Computer {
  final String model;
  final CPU cpu;         // part object
  final Monitor monitor; // part object
  final Keyboard keyboard; // part object

  Computer({
    this.model = 'MyComputer',
    required this.cpu,
    required this.monitor,
    required this.keyboard,
  });

  // Delegated action 1
  void boot() {
    print('[$model] [Computer] Boot sequence start...');
    cpu.powerOn();                  // delegate to CPU
    monitor.turnOn();               // delegate to Monitor
    keyboard.enable();              // delegate to Keyboard
    print('[$model] [Computer] Boot complete.\n');
  }

  // Delegated action 2
  void runTask(String taskName) {
    print('[$model] [Computer] Running task: $taskName');
    cpu.compute(taskName);          // delegate heavy work to CPU
    monitor.display('Task: $taskName'); // delegate display work
    keyboard.type('User input for $taskName'); // simulate keyboard input handling
    print('[$model] [Computer] Task "$taskName" finished.\n');
  }
}
