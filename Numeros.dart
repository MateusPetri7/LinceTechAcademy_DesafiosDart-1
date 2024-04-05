void main() {
  List<int> listaNumeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  listaNumeros.sort();

  listaNumeros.forEach((numero) {
    print("Decimal: $numero, "
        "Binário: ${converterParaBinario(numero)}, "
        "Octal: ${converterParaOctal(numero)}, "
        "Hexadecimal: ${converterParaHexadecimal(numero)}");
  });
}

String converterParaBinario(int numero) => numero.toRadixString(2);

String converterParaOctal(int numero) => numero.toRadixString(8);

String converterParaHexadecimal(int numero) => numero.toRadixString(16);
