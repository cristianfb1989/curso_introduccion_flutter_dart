void main() {
  var x = 1;
  var y = 1.1;
  num z = -1;
  print(z.abs());

  //redondeo al siguiente n° entero
  print(y.ceil());

  //redondeo al anterior n° entero
  print(y.floor());

  //Dart convierte al valor a 1.0
  double real = 1;

  //String --> Int
  int uno = int.parse('1');

  //String --> double
  double unoPuntoUno = double.parse('1.1');

  //Int --> String
  String cadenaUno = uno.toString();

  double nroPi = 3.1416;
  String cadenaPi = nroPi.toStringAsFixed(2);
  print(cadenaPi);

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

  /*#####################################################*/
  var cadena1 = 'Hola Mundo!';
  var cadena2 = 'Hola Mundo 2';
  var cadena3 = 'Yo dije: \'Hola Mundo';

  //Concatenar Strings
  var string1 = 'Hola' 'Mundo';
  print(string1);
  var string2 = 'Hola';
  var string3 = ' mundo';
  print(string2 + string3);

  //Expresiones en strings
  var edad = 30;
  String frase = 'Mi edad es ${edad}';
  print(frase);

  print('Mi Saludo Inicial: ${string2 + string3}');
  print('2 + 2 = ${2 + 2}');

  /*#####################################################*/
  bool existe;
  if (existe)
    print('Existe es true');
  else
    print('Existe es false');

  /*#####################################################*/
  var listaNumeros = [1, 2, 3, 4, 5];
  print(listaNumeros.length);
  var listaPares = [2, 3, 5, 8];
  print(listaPares.length);
  print('Elemento de la posicion 2: ${listaPares[2]}');
  var listImpares = const [3, 5, 7];
  print('Elemento de la posicion 1: ${listImpares[1]}');

  //modificar un elemento de la lista
  listImpares[1] = 9;
  print('Elemento de la posicion 1: ${listImpares[1]}');

  /*#####################################################*/
  Set<String> sistemasOperativos = {'Windows', 'MacOS', 'Ubuntu', 'CentOS'};
  print(sistemasOperativos);
  Set<String> sistemasOpMoviles = {'Android', 'iOS'};
  sistemasOperativos.add('RedHat');
  print(sistemasOperativos);
  sistemasOperativos.addAll(sistemasOpMoviles);
  print(sistemasOperativos);

  /*#####################################################*/
  var idiomas = {
    //Clave: valor
    'es': 'Español',
    'en': 'Ingles',
    'fr': 'Frances'
  };
  print(idiomas['es']);
  var nuevoIdioma = {'ch': 'Chino'};
  idiomas.addAll(nuevoIdioma);
  print(idiomas);
  var alumnos = Map();
  alumnos[1] = 'Cristian';
  alumnos[2] = 'Fabian';
  alumnos[3] = 'Leonardo';
  alumnos[4] = 'Abel';

  print(alumnos);

  /*#####################################################*/
  //Runes
  var coche = '\u{F697}';
  print(coche);

  Runes iconos = Runes('\u{1F6A2} \u{1F6A4} \u{1F695}');
  print(String.fromCharCodes(iconos));
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
