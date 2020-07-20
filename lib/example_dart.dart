void main() {
  var x = 1;
  var y = 1.1;
  num z = -1;
  print(z.abs());
  print(y.ceil()); //redondeo al siguiente n° entero
  print(y.floor()); // redondeo al anterior n° entero
  double real = 1; //Dart convierte al valor a 1.0
  /*#####################################################*/

  const pi = 3.1416;
  const divisor = 2 * pi;
  var radio = 15 / divisor;
  print('Radio: ' + radio.toString());
  /*#####################################################*/

  var _nombre;
  print(_nombre);
  conocerTipo(_nombre);
  _nombre = 'Cristian';
  print(_nombre);
  conocerTipo(_nombre);
  /*#####################################################*/

  var number = 1;
  printNumero(number);
  /*#####################################################*/
  print('Hello World Dart!');
}

printNumero(int numero) {
  print('Valor de numero:  ${numero.toString()}');
}

conocerTipo(dynamic variable) {
  if (variable is String)
    print('la variable es string');
  else
    print('la variable es de otro tipo');
}
