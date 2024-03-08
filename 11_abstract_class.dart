void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);
  print(nuclearPlant);
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water } //de esta manera,
//se podrá agregar otro tipo de energía sin porblema

abstract class EnergyPlant {
  //DATO: NO SE PUEDE INICIALIZAR UNA CLASE DE ESTE TIPO, ES DECIR,
  //CREAR UNA VARIABLE

  double energyLeft;
  final PlantType type; //nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends (hereda/general) o implements(es especifico, lo que quiero)
class WindPlant extends EnergyPlant {
  //De esta forma mandamos a llamar al constructor de la clase abstracta
  WindPlant({required double initialEnergy})
      :
        //Llenamos aqui para satisfacer el constructor de la clase abstracta
        super(energyLeft: initialEnergy, type: PlantType.wind);

  @override //para aclarar que se está sobreescribiendo
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//para cuando solo quiero un solo método
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  @override
  NuclearPlant({required this.energyLeft});

  @override //para aclarar que se está sobreescribiendo
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
