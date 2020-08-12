import 'dart:convert';
void main(){
  // final es para decirle a dart que la instancia wolverine nunca va a cambiar, es como una constante, se diferencia en como se compilan.
  
  //final wolverine = new Heroe(power:'Regeneracion', name:'Logan', age:37);
  //print(wolverine);

  final rawJson = '{"name":"Logan", "poder":"Regeneracion"}'
  final parsedJson = json.decode(rawJson);

  final wolverine = new Heroe.fromJson(parsedJson)
}

class Heroe {
  
  String name;
  String power;
  int age;
  
  // Este es el constructor de la clase, el cual lleva el mismo nombre que la clase.
  //La clase heroe tiene propiedades con nombre, se denota con las llaves {} antes de las propiedades
  
  /*Heroe({String name='Unknown', String power}){
    this.name = name;
    this.power = power;
  }*/
  
  //Forma mas corta de hacer el constructor de la clase.
  Heroe({this.name, this.power, this.age});
    
  //Metodo toString, propia de la clase
  String toString() => '$name - $power - $age';

  /*Tambien podemos utilizar los llamados Constructores con nombre, que sirven para poder crear instancias de una clase sin perjudicar al constructor inicial, se puede crear este tipo de constructor cuantas veces quieras*/

  //El constructor lleva el nombre fromJson
  Heroe.fromJson(Map parsedJson){
    name = parsedJson['name'];
    power = parsedJson['power'];
  }
}