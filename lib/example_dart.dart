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
  bool existe = true;
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
  var listImpares = [3, 5, 7];
  //var listImpares = const [3, 5, 7];
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

  /*#####################################################*/
  //Funciones
  bool esPar(int numero) {
    return numero % 2 == 0;
  }

  print('El n° 2 es par? ${esPar(2)}');
  print('El n° 3 es par? ${esPar(3)}');

  esImpar(int numero) => numero % 2 != 0;

  print('El n° 2 es impar? ${esImpar(2)}');
  print('El n° 3 es impar? ${esImpar(3)}');

  /*#####################################################*/
  //Parametros opcionales
  mostrarNombreCompleto(nombre: 'Cristian', apellido: 'Bustos');
  mostrarInformacionExtra('Cristian', 30, 'Cordoba');

  /*#####################################################*/
  //Funciones como parametros
  var listaNumeros2 = [1, 2, 3, 4, 5];
  listaNumeros2.forEach(imprimirNumero);

  //funcion declarada en varible
  var pasarMayusculas = (mensaje) => mensaje.toUpperCase();
  print(pasarMayusculas('hola mundo'));

  /*#####################################################*/
  //Funciones Anonimas
  var listaSistemasOperativos = ['Windows', 'MacOS', "Ubuntu"];
  listaSistemasOperativos.forEach((elemento) {
    print(
        'Posicion: ${listaSistemasOperativos.indexOf(elemento)}, nombre: $elemento');
  });

  /*#####################################################*/
  //Condicionales
  if (2 > 5) {
    print('2 es mayor que 5');
  } else if (2 > 4) {
    print('2 es mayor que 4');
  } else {
    print('2 no es mayor que 4 ni mayor que 5');
  }

  /*#####################################################*/
  //Bucles for

  //For basico
  var animales = ['perro', 'gato', 'elefante', 'tigre'];
  for (var i = 0; i < animales.length; i++) {
    print(animales[i]);
  }

  print('---Impresion del forEach---');
  animales.forEach((animal) => print(animal));

  print('---Impresion del forIn---');
  for (var animal in animales) {
    print(animal);
  }

  /*#####################################################*/
  var alumnos2 = ['Cristian', 'Fabian', 'Leonardo', 'Abel'];
  bool encontrado = false;
  var i = 0;
  while (!encontrado) {
    if (alumnos2[i] == 'Cristian') {
      encontrado = true;
      print('Hemos encontrado a Cristian');
    } else {
      print('El alumno ${alumnos2[i]} no es Cristian. Seguimos Buscando');
    }
    i++;
  }

  print('--- Do-While ---');
  i = 0;
  encontrado = false;
  do {
    if (alumnos2[i] == 'Fabian') {
      encontrado = true;
      print('Hemos encontrado a Fabian');
    } else {
      print('El alumno ${alumnos2[i]} no es Fabian. Seguimos Buscando');
    }
    i++;
  } while (!encontrado);

  /*#####################################################*/
  var estadoTienda = 'ABIERTA';
  switch (estadoTienda) {
    case 'ABIERTA':
      print('Tienda Abierta');
      break;
    case 'CERRADA':
      print('Tienda cerrada');
      break;
  }

  // Persona p = Persona('Cristian', 'Bustos');
  // print('Nombre: ${p.nombre}, Apellidos: ${p.apellidos}');

  Persona p = Persona('Cristian', 'Bustos', 30);
  print('Nombre: ${p.nombre}, Apellidos: ${p.apellidos}, Edad: ${p.edad}');

  Persona p2 = Persona.sinEdad('Leonardo', 'Bustos');
  p2.edad = 28;
  print('Nombre: ${p2.nombre}, Apellidos: ${p2.apellidos}, Edad: ${p2.edad}');

  p.esMayor(p2);
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

//parametros nombrados 'named parameters'
mostrarNombreCompleto({nombre, apellido}) {
  print('Nombre: $nombre, Apellidos: $apellido');
}

mostrarInformacionExtra(nombre, int edad, ciudad) {
  print('Nombre: $nombre, Edad: ${edad.toString()}, Ciudad: $ciudad');
}

void imprimirNumero(int numero) {
  print(numero.toString());
}

class Persona {
  String nombre, apellidos;
  int edad;

  //Suntactic Sugar
  Persona(this.nombre, this.apellidos, this.edad);

//Contructor alternativo: NamedConstuctores
  Persona.sinEdad(String nombre, String apellido) {
    this.nombre = nombre;
    this.apellidos = apellidos;
    this.edad = 0;
  }

  // Persona(String n, String a) {
  //   this.apellidos = a;
  //   this.nombre = n;
  // }

  void esMayor(Persona p) {
    if (this.edad > p.edad) {
      print('${this.nombre} es mayor que ${p.nombre}');
    } else {
      print('${this.nombre} es menor que ${p.nombre}');
    }
  }
}
