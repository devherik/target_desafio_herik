import 'dart:io';

void main(List<String> args) {
  inverter() {
    // 5) Escreva um programa que inverta os caracteres de um string.
    String value = '', eulav = '';
    print('Informe um palavra:');
    try {
      value = stdin.readLineSync()!;
    } catch (e) {
      print(e.toString());
      exit(0);
    }
    for (var i = value.length - 1; i >= 0; i--) {
      eulav += value[i];
    }
    print('A palavra $value ao contrário é $eulav');
  }

  inverter();
}
