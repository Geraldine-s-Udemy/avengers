void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print('Length: ${numbers.length}');
  print('Item 0: ${numbers[0]}');
  print('Primero: ${numbers.first}');
  print('último: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Convertido a lista: ${reversedNumbers.toList()}');
  print('Set${reversedNumbers.toSet()}');
  //CABE MENCIONAR QUE CON LA PROPIEDAD SET, NO SE APARECEN NÚMEROS REPETIDOS

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}
