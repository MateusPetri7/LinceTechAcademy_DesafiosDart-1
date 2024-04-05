import 'dart:math';

void main() {
  final random = Random();

  List<String> nomes = [
    "Ana",
    "Francisco",
    "Joao",
    "Pedro",
    "Gabriel",
    "Rafaela",
    "Marcio",
    "Jose",
    "Carlos",
    "Patricia",
    "Helena",
    "Camila",
    "Mateus",
    "Gabriel",
    "Maria",
    "Samuel",
    "Karina",
    "Antonio",
    "Daniel",
    "Joel",
    "Cristiana",
    "Sebastião",
    "Paula"
  ];
  List<String> sobreNomes = [
    "Silva",
    "Ferreira",
    "Almeida",
    "Azevedo",
    "Braga",
    "Barros",
    "Campos",
    "Cardoso",
    "Teixeira",
    "Costa",
    "Santos",
    "Rodrigues",
    "Souza",
    "Alves",
    "Pereira",
    "Lima",
    "Gomes",
    "Ribeiro",
    "Carvalho",
    "Lopes",
    "Barbosa"
  ];

  String nomeAleatorio = nomes[random.nextInt(nomes.length)];
  String sobreNomeAleatorio = sobreNomes[random.nextInt(sobreNomes.length)];

  print("Nome: $nomeAleatorio $sobreNomeAleatorio");
}
