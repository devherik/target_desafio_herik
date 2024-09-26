import 'dart:io';

void main(List<String> args) {
  isItAFibonacciNumber() {
    final fibonacci = <int>[0, 1];
    int value = 0;
    int? number;
    print('Por favor, informe um valor inteiro:');
    try {
      number = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('O valor informado não é um inteiro.');
      exit(0);
    }
    while (value <= number) {
      value = fibonacci.last + fibonacci[fibonacci.length - 2];
      //print('Value: $value');
      fibonacci.add(value);
    }
    fibonacci.contains(number)
        ? print(
            'O número informado pertence a sequência Fibonacci.\n$fibonacci')
        : print(
            'O número informado não está na sequência Fibonacci.\n$fibonacci');
  }

  isItAFibonacciNumber();
}
