void main(){

  final cuadrado = new Cuadrado();
  cuadrado.lado = 5;
  print(cuadrado);
  print('Area: ${cuadrado.area}');
  
}


class Cuadrado {
  double _lado;
  double _area;
   
  //Establecer valores
  set lado(double valor){
    if(valor <= 0){
      throw('El lado no puede ser menor o igual a 0');
    }
    _lado = valor;
  }
   //Obtener valores
  double get area => _lado * _lado;
   
  toString() => 'Lado: $_lado';
}