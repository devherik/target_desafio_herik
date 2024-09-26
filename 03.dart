void main(List<String> args) {
  //recebe um vetor de Map(dia do mes, valor, é dia util?) e retorna:
  //menor valor, maior valor, média, dias acima da média
  //importante: feriados e fins de semanda que nãohouve faturamento não devem entrar na média
  final faturamento = <Map<String, dynamic>>[
    {'dia': 1, 'valor': 0.0, 'util': false},
    {'dia': 2, 'valor': 2700.0, 'util': true},
    {'dia': 3, 'valor': 1100.0, 'util': true},
    {'dia': 4, 'valor': 4500.0, 'util': true},
    {'dia': 5, 'valor': 3100.0, 'util': true},
    {'dia': 6, 'valor': 1800.0, 'util': true},
    {'dia': 7, 'valor': 0.0, 'util': false},
    {'dia': 8, 'valor': 1600.0, 'util': true},
    {'dia': 9, 'valor': 2190.0, 'util': true},
    {'dia': 10, 'valor': 2700.0, 'util': true},
    {'dia': 11, 'valor': 2900.0, 'util': true},
    {'dia': 12, 'valor': 300.0, 'util': true},
    {'dia': 13, 'valor': 0.0, 'util': false},
    {'dia': 14, 'valor': 4200.0, 'util': true},
    {'dia': 15, 'valor': 4400.0, 'util': true},
    {'dia': 16, 'valor': 1000.0, 'util': true},
    {'dia': 17, 'valor': 200.0, 'util': true},
    {'dia': 18, 'valor': 1200.0, 'util': true},
    {'dia': 19, 'valor': 0.0, 'util': false},
  ];
  fecharMes() {
    double media = 0.0, maior = 0.0, menor = 10000.0, soma = 0.0;
    int acimaMedia = 0, diasUteis = 0;
    for (var dia in faturamento) {
      if (dia['util']) {
        soma += dia['valor'];
        diasUteis++;
        dia['valor'] > maior ? maior = dia['valor'] : null;
        dia['valor'] < menor ? menor = dia['valor'] : null;
      }
    }
    media = soma / diasUteis;
    for (var dia in faturamento) {
      dia['valor'] >= media ? acimaMedia++ : null;
    }
    print(
        'Relatório do mês:\nMaior faturamento: $maior\nMenor faturamento: $menor\nMédia (apenas dias úteis): $media, onde $acimaMedia estiveram acima');
  }

  fecharMes();
}
