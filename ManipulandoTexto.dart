void main() {
  String texto =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  int numeroPalavras = contarNumeroPalavrasTexto(texto);
  int tamanhoTexto = contarTamanhoTexto(texto);
  int numeroFrases = contarNumeroFrasesTexto(texto);
  int numeroVogais = contarNumeroVogaisTexto(texto);
  List<String> consoantesEncontradas = contarConsoantesNoTexto(texto);

  print("parágrafo: $texto");
  print("Número de palavras: $numeroPalavras");
  print("Tamanho do texto: $tamanhoTexto");
  print("Número de frases: $numeroFrases");
  print("Número de vogais: $numeroVogais");
  print("Consoantes encontradas: ${consoantesEncontradas.toSet().join(', ')}");
}

int contarNumeroPalavrasTexto(String texto) {
  List<String> list = texto.split(" ");
  return list.length;
}

int contarTamanhoTexto(String texto) => texto.length;

int contarNumeroFrasesTexto(String texto) {
  int contador = 0;

  for (int i = 0; i < texto.length; i++) {
    if (texto[i] == '.' || texto[i] == '!' || texto[i] == '?') {
      contador++;
    }
  }

  return contador;
}

int contarNumeroVogaisTexto(String texto) {
  int contador = 0;

  for (int i = 0; i < texto.length; i++) {
    if (ehVogal(texto[i])) {
      contador++;
    }
  }

  return contador;
}

List<String> contarConsoantesNoTexto(String texto) {
  List<String> listaConsoantes = [];

  for (int i = 0; i < texto.length; i++) {
    if (verificarLetra(texto[i]) && !ehVogal(texto[i])) {
      listaConsoantes.add(texto[i].toLowerCase());
    }
  }

  listaConsoantes.sort();
  return listaConsoantes;
}

bool ehVogal(String caractere) {
  return 'aeiou'.contains(caractere);
}

bool verificarLetra(String caractere) {
  return caractere.toLowerCase() != caractere.toUpperCase();
}
