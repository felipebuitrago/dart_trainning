void main(List<String> args) {
  
  final Person person1 = new Person(age: 23, name: 'Felipe');
  //Person person1 = Person(name: 'Felipe', age: 23); 'new' is not obligatory
  print(person1);
  print(person1._name); // not an error because the class is in the same file

  print(person1.infoPerson());

  final Person unknownPersonData = Person.noKnownData();
  print(unknownPersonData);
}

class Person extends AbstractPerson{

  late String _name; // _ before the variable to set it private
  late int _age;

  Person({ required String name, required int age} ){
    this._name = name;
    this._age  = age;
  }
  
  Person.noKnownData(){ // another constructor
    this._name = 'no name';
    this._age  = 0;
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
    return 'Hi, $_name. You are $_age years old.';
  }

  @override
  String toString(){
    return 'Modified toString.\n->Hi, $_name. You are $_age years old.';
  }
}

abstract class AbstractPerson {

  String infoPerson ();
}