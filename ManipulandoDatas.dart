import 'dart:core';

void main() {
  DateTime dataAtual = DateTime.now();
  final int quantidadeDiasASomar = 18;

  DateTime dataCalculada =
      adicionarDiasExcluindoFinaisDeSemana(dataAtual, quantidadeDiasASomar);

  print("Data atual: $dataAtual");
  print("Data calculada: $dataCalculada");
}

DateTime adicionarDiasExcluindoFinaisDeSemana(
    DateTime data, int quantidadeDiasASomar) {
  int diasAdicionados = 0;
  while (diasAdicionados < quantidadeDiasASomar) {
    data = data.add(Duration(days: 1));
    if (data.weekday == 6 || data.weekday == 7) {
      continue;
    }
    diasAdicionados++;
  }
  return data;
}
