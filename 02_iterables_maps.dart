void main() {
  
  final numbers = <int>[1,2,3,4,5,6,7,8,9,10]; 
  print(numbers.reversed);

  final greaterThan4 = numbers.where((element) {return element > 4;});

  print(greaterThan4);

  for (var element in greaterThan4) {
    print('inside for loop: $element');
  }

  final list = numbers.toList();
  final set  = numbers.toSet();
  print(list);
  print(set);

  final monthsMap = {
    1:'Enero', 
    2:'Febrero',
    3:'Marzo',
    4:'Abril',
    5:'Mayo',
    6:'Junio',
    7:'Julio',
    8:'Agosto',
    9:'Septiembre',
    10:'Octubre',
    11:'Noviembre',
    12:'Diciembre',
  };
  
  print(monthsMap[1]);
}