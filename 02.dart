import 'dart:io';

void main(List<String> args) {
  isItAFibonacciNumber() {
    // 2) Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na linguagem que desejar onde,
    // informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.
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
