void main() {
  List<double> listCelsius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (var celsius in listCelsius) {
    final double fahrenheit = converterCelciusEmFahrenheit(celsius);
    final double kelvin = converterCelciusEmKelvin(celsius);
    print(
        "Celsius: ${celsius.toStringAsFixed(2)}, fahrenheit: ${fahrenheit.toStringAsFixed(2)}, kelvin: ${kelvin.toStringAsFixed(2)}");
  }
}

double converterCelciusEmFahrenheit(double celsius) => (celsius * 9 / 5) + 32;

double converterCelciusEmKelvin(double celsius) => celsius + 273.15;
