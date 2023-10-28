void main(List<String> args) {
  
  WaterPlant elQuimbo = WaterPlant(initialEnergy: 333.333);
  elQuimbo.consumeEnergy(33.333);

  print(elQuimbo);

}

class WaterPlant extends EnergyPlant{

  WaterPlant({ required double initialEnergy })
    : super(energyLeft: initialEnergy, type: PlantType.water);
  
  @override
  void consumeEnergy (double energyConsumed) {
    energyLeft -= energyConsumed;
  }

  @override
  String toString () {
    return 'Plant type: $type, energy: $energyLeft';
  }
}

abstract class EnergyPlant {

  late double energyLeft;
  late PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy( double energy );
}

enum PlantType { nuclear, wind, water }