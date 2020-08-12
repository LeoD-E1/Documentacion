void main(){
  

  final superman = new Heroe();
  superman.name='Clark Kent';
  
  final luthor = new Villano();
  luthor.name = 'Lex Luthor';
  
}

//Extends nos sirve para extender metodos y parametros de una clase los cuales son comunes en varias clases
abstract class Personaje{
  String name;
  String power;
}

class Heroe extends Personaje{
  int valentia;
}

class Villano extends Personaje{
  int maldad;
}