import 'dart:math';

void main() {
  List<double> listRaios = [5, 8, 12, 7.3, 18, 2, 25];

  for (var raio in listRaios) {
    final double areaCirculo = calcularAreaCirculo(raio);
    final double perimetroCirculo = calcularPerimetroCirculo(raio);
    print(
        "Raio: $raio, area: ${areaCirculo.toStringAsFixed(2)}, perímetro: ${perimetroCirculo.toStringAsFixed(2)}.");
  }
}

double calcularAreaCirculo(double raio) => pi * raio * raio;

double calcularPerimetroCirculo(double raio) => 2 * pi * raio;
