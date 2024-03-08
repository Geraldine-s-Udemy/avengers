void main() {
  emitNumbers().listen((value) {
    print('Stream value $value');
  });
}

Stream<int> emitNumbers() {
  //Stream<Aqui se especifica el tipo de dato>{}

  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('desde periodic $value');
    return value;
  }).take(5);
  //la función Take(),
  //es para indicar la cantidad de resultados que esperamos del Stream
}
