void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(10, 20)}');
}

greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersOptional(int a, [int b = 0]) {
  //De esta manera se ve más limpio el código
  //b ??=0;
  // b= b ?? 0; ESTA ES LA FORMA LARGA Y LA ANTERIOR ES LA CORTA
  //PARA DECIR, SI B ES VACÍO, PONGA UN VALOR DE CERO
  return a + b;
}
