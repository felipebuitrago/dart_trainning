void main() {

  const constvar = 20;

  final String name = 'Felipe Buitrago';
  final int healthPoint = 3333;
  final bool isAlive = true;
  final List<String> abilities = ['Coding', 'Sleeping'];
  final projects = <String>['DevDocky.Tech', 'POS Software'];

  print("""
    $constvar
    $name
    $healthPoint
    $isAlive
    $abilities
    $projects
  """);// multiline String """ string """


  // Null safety
  //int i = null; invalid in Dart
  int? i = null; // anhadiendo ? al tipo, indica que puede ser null

  // Null aware operator:
  i ??= 33; // ??= es un operator que asignara el valor indicado si la variable es null
  print(i);
  i = null;

  // Operador ?? evaluara el valor de la izquierda, siendo diferente a null, retornara este,
  //sino evaluara el valor de la derecha para retornarlo si es diferente a null
  print(null ?? 33);

  int? nullable = i ?? 66;
  print(nullable);
}
