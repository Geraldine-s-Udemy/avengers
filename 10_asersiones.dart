void main() {
  //Creación de una clase que me calcule el área de un cuadrado
  final mySquare = Square(side: -10);

  //mySquare.side = 5;

  print('Área: ${mySquare.area}');
}

//Aqui siempre se van a crear las clases
class Square {
  double _side; //size*size
  //double _side; si está con guión bajo significa que es variable privada

  Square({required double side})
      : assert(side >= 0, 'side must be >=0'),
        //esto es para que detecte errores, es decir, validaciones que se deben cumplir
        //y el otro argumento que está entre comillas simples
        //es para que se reconozca donde se encuentra el error.
        _side = side;

  //Creación de los getters and setters
  double get area {
    return _side * _side;
  } //este es un get(), solo que tiene otro nombre

  set side(double value) {
    print('setting new value $value');

    if (value < 0) throw 'Value must be >=0';
    //el THROW es como un caso contrario
    //presente como error la frase que se coloca después de la palabra
    //clave throw

    _side = value; //se cumple solo si sale todo bien
  }

  double calculateArea() {
    return _side * _side;
  }
}
