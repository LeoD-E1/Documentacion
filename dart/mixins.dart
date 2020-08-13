
/* Los mixins son una forma de reutilizar el código
 de una clase en varias jerarquías de clases.*/

abstract class Animal { }

abstract class Mamiferos extends Animal { }
abstract class Peces extends Animal { }
abstract class Aves extends Animal { }

abstract class Volador{
  void volar() => print('Puedo Volar!');
}

abstract class Caminante{
  void caminar() => print('Puedo Caminar!');
}

abstract class Nadador{
  void nadar() => print('Puedo Nadar!');
}

class Delfin extends Mamiferos with Nadador {}
class Perro extends Mamiferos with Caminante, Nadador{}
class Tiburon extends Peces with Nadador{}
class Paloma extends Aves with Volador, Caminante{}
class Pato extends Aves with Volador, Caminante, Nadador{}

void main(){
  final perro = new Perro();
  perro.caminar();
  
  final paloma = new Paloma();
  paloma.volar();
  
  final pato = new Pato();
  pato.nadar();
}