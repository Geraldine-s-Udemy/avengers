void main() {
  final Map<String, dynamic> pokemon = {
    // final pokemon => Si asi sale error, intenta identifiando que es un Map,
    //para poder tomar los elementos que haya dentro de ellos sin problema
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  print(pokemon);
  print(
      'Front: ${pokemon['sprites'][1]} '); //esto es para poder llamar solo el elemento que deseamos conocer del map
  print('Back: ${pokemon['sprites'][2]} ');
}
