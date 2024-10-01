void main(List<String> args) {
  /* 1) Observe o trecho de código abaixo: int INDICE = 13, SOMA = 0, K = 0;
  Enquanto K < INDICE faça { K = K + 1; SOMA = SOMA + K; }
  Imprimir(SOMA);
  Ao final do processamento, qual será o valor da variável SOMA?*/
  int indice = 13, soma = 0;
  for (var k = 0; k < indice; k++) {
    k++;
    soma += k;
  }
  print('Soma: $soma');
}
