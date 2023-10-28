void main(List<String> args) {
  
  Dolphin myDolphin = Dolphin();
  print('Dolphin');
  myDolphin.swimming();

  FlyFish myFlyFish = FlyFish();
  print('Fly Fish');
  myFlyFish.flying();
  myFlyFish.swimming();

  Duck myDuck = Duck();
  print('Duck');
  myDuck.walking();
  myDuck.flying();
  myDuck.swimming();
}

abstract class Animal{

  
}

abstract class Mammal extends Animal{


}

abstract class Fish extends Animal{


}

abstract class Bird extends Animal{
  
}

mixin Fly {
  void flying() => print('This animal is flying.');
}

mixin Walk {
  void walking() => print('This animal is walking.');
}

mixin Swim {
  void swimming() => print('This animal is swimming.');
}

class Dolphin extends Mammal with Swim{
}

class Duck extends Bird with Swim, Walk, Fly{
}

class FlyFish extends Fish with Swim, Fly{

}