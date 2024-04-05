void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  print("for: ${somatorioListaNumerosComFor(numeros)}");
  print("while: ${somatorioListaNumerosComWhile(numeros)}");
  print("recursão: ${somatorioMetodoRecursivo(numeros)}");
  print("lista: ${somatorioUtilizandoMetodoDeColecao(numeros)}");
}

int somatorioListaNumerosComFor(List<int> numeros) {
  int soma = 0;
  for (int numero in numeros) {
    soma += numero;
  }
  return soma;
}

int somatorioListaNumerosComWhile(List<int> numeros) {
  int soma = 0;
  int cont = 0;
  while (cont < numeros.length) {
    soma += numeros[cont];
    cont++;
  }

  return soma;
}

int somatorioMetodoRecursivo(List<int> numeros) {
  // Caso base: se a lista estiver vazia, retornamos 0
  if (numeros.isEmpty) {
    return 0;
  }
  // Caso recursivo: somamos o primeiro elemento da lista com a soma dos restantes
  else {
    return numeros.first + somatorioMetodoRecursivo(numeros.sublist(1));
  }
}

int somatorioUtilizandoMetodoDeColecao(List<int> numeros) {
  int soma = numeros.reduce((valorAtual, elemento) => valorAtual + elemento);
  return soma;
}
