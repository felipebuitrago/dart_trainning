void main(List<String> args) {
  
  final Person person1 = new Person(age: 23, name: 'Felipe');
  //Person person1 = Person(name: 'Felipe', age: 23); 'new' is not obligatory
  print(person1);
  print(person1.name);

  print(person1.infoPerson());
}

class Person extends AbstractPerson{

  late String name;
  late int age;

  Person({ required String name, required int age} ){
    this.name = name;
    this.age  = age;
  }

  //Otras maneras de crear un constructor sin definir las propiedades como late

  //Person(this.name, this.age);
  
  //Person({ required this.name, required this.age} );

  //Person(String name, int age)
  // : this.name = name,
  //   this.age  = age;
  //

  @override
  String infoPerson(){
    return 'Hi, $name. You are $age years old.';
  }

  @override
  String toString(){
    return 'Modified toString.';
  }
}

abstract class AbstractPerson {

  String infoPerson ();
}