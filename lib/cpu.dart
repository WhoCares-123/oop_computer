// lib/cpu.dart
// Example usage: CPU cpu = CPU(name: 'Ryzen-7', cores: 8);

class CPU {
  String name;
  int cores;

  CPU({this.name = 'CPU-Generic', this.cores = 4});

  // Public method used by container
  void boot() {
    print('[$name] boot -> initializing $cores cores...');
  }

  // Public method used by container returning a numeric result
  double runBenchmark() {
    // simple fake benchmark using cores
    double base = 1000.0;
    double score = base * (cores / 4.0);
    print('[$name] runBenchmark -> score ${score.toStringAsFixed(1)}');
    return score;
  }
}
