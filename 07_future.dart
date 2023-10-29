void main(List<String> args) {
  
  print('init');

  futureFunction()
    .then((value) => print(value))
    .catchError((onError) => print(onError));

  print('end');

}

Future<String> futureFunction () {

  return Future.delayed(const Duration(seconds: 3) , () {
    throw 'Error on future';
    //return 'Future resolved in 3 seconds.';
  });
}