void main(List<String> args) {
  // 4) Escreva um programa na linguagem que desejar onde calcule o percentual de representação que cada estado teve dentro do valor total mensal da distribuidora.
  final estados = <Map<String, dynamic>>[
    {'nome': 'São Paulo', 'valor': 67836.43},
    {'nome': 'Rio de Janeiro', 'valor': 36678.66},
    {'nome': "MInas Gerais", 'valor': 29229.88},
    {'nome': 'Espirito Santo', 'valor': 27165.48},
    {'nome': 'outros', 'valor': 19849.53}
  ];
  participacao() {
    double soma = 0.0;
    for (var estado in estados) {
      soma += estado['valor'];
    }
    print('Paricipação de cada em estado no valor total:');
    for (var estado in estados) {
      final porcentagem = (estado['valor'] / soma) * 100;
      estado['nome'] != 'outros'
          ? print('° ${estado['nome']} - $porcentagem %')
          : print('° Outros - $porcentagem %');
    }
  }

  participacao();
}
