void main() {
  //Aqui vamos a crear instancias, con diferentes tipos de argumentos
  final Map<String, dynamic> rawJson = {
    'name': 'Tonny Star',
    'power': 'money',
    'isAlive': true
  };

  final iroman = Hero.fromJson(
      rawJson); //De esta manera creamos una instancia de nuestra clase,
  //de nuestro hero, con los datos que hemos mandado

  //final iroman = Hero(
  //    isAlive: rawJson['isAlive2']?? false,
  //    power: 'money',
  //    name: 'Tonny Star'
  // );

  print(iroman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero(
      { //constructor
      required this.name,
      required this.power,
      required this.isAlive});

  //Creación del constructor que será interactivo, es decir, hará las preguntas
  //y dará las respuestas, dependiendo de lo que enviémos
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name,$power, isAlive: ${isAlive ? 'Yes' : 'Nope'}';
  }
}
