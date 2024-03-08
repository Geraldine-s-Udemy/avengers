void main() {
  final Hero wolverine = Hero('Logan', 'Invisibilidad');

  print(wolverine);
  print(wolverine.name); //PARA LLAMAR EL NOMBRE
  print(wolverine.power); //PARA LLAMAR EL SUPERPODER
}

class Hero {
  String name;
  String power;

  //EL CONSTRUCTOR, para inicializar las variables, forma conocida
  // Hero(String pName, String pPower){
  //  name = pName;
  //  power = pPower;
  // }

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
  //ESTA ES LA MANERA DE HACER UN CONSTRUCTOR EN DART

  //Hero(this.name, this.power)
  //OTRA MANERA DE PODER LLAMAR A LAS CARACTERISTICAS DEL CONSTRUCTOR

}
