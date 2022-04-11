
// https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
// un mixins en dart es una forma de reutilizar el código de una clase en varias jearquias de clases
abstract class Animal { }

abstract class Mamifero extends Animal { }
abstract class Ave extends Animal { }
abstract class Pez extends Animal { }

// Caracteristicas de acciones de un animal.
abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

// exitiende a un comportamiento Mamifero el mixins [with] es nadador
class Delfin extends Mamifero with Nadador{}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}


void main() {
//   final flipper = new Delfin();
//   flipper.nadar();
//   final batman = new Murcielago();
//   batman.caminar();
//   batman.volar();
}