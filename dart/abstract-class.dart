void main(){
  
  //una clase abstracta nos sirve para obligar a otras clases a que tomen los metodos y propiedades que tiene la misma
  
  final perro = new Perro();
  perro.emitirSonido();
  
  final gato = new Gato();
  gato.emitirSonido();
  
}

abstract class Animal{
  int patas;
  void emitirSonido();
}

class Perro implements Animal{
  int patas;
  void emitirSonido() => print('GUAUUU!');
}

class Gato implements Animal{
  int patas;
  void emitirSonido() => print('MIAUU!!');
}