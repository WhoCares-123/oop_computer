// lib/cpu.dart
class CPU {
  String model;
  int cores;
  double frequencyGhz;

  // Example usage comment:
  // var cpu = CPU(model: 'Ryzen 5', cores: 6, frequencyGhz: 3.6);
  // cpu.powerOn();
  // cpu.compute('Render frame');

  CPU({this.model = 'StdCPU', this.cores = 4, this.frequencyGhz = 2.5});

  void powerOn() {
    print('[CPU] $model: powering on (${cores} cores @ ${frequencyGhz}GHz)');
  }

  void compute(String job) {
    print('[CPU] $model: computing "$job" (using ${cores} cores)...');
  }
}
