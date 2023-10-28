void main(List<String> args) {
  print(args);

  print(arrowFunction());
  
  print(plusNumbers(3));

  print(plusArrowFunction(3 , 5));


  print(greetPerson(name: 'Felipe', message: 'Hi,'));
}

//* arrow functions 
//* af cant have a body like javascript af, in dart is only to return a value
String arrowFunction () => 'Hi, from an arrow function.';
int plusArrowFunction (int a, int b) => a + b;

int plusNumbers (int a, [int? b] /* parametro no obligatorio */) {
  b = b ?? 0;
  //b ??= 0;
  return (a + b);
}
             /* parametro no obligatorio con valor pre asignado*/
//int plusNumbers (int a, [int b = 0]) {
//  return (a + b);
//}
// parametros por nombre y requeridos
String greetPerson ({required String name, String message = 'Hola,' }) {
  return '$message $name';
}