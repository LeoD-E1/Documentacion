void main(){
 /* 
  var name = 'Zoila Verga';
  var longName = name.length;
  List<String> letras=[];
  
  for(var i=0; i<longName; i++){
    letras.add(name[i].toUpperCase());
  }
  
  print('La palabra $name tiene $longName caracteres de logitud, los cuales son $letras');
 */
  
  
  // En la sintaxis Map<String,dynamic> Estamos definiendo que el primer valor sera un strin y el 2do puede ser cualquiera
 /* Map<String,dynamic>persona = {
    'name':'Carlos',
    'surname':'Altillo',
    'age':39,
    'state': true
  };
  
  //Añadir un elemento a un map
  persona.addAll({'height': 1.80});
  print(persona);
  
  Map<int,String>estudiantes = {
    1:'Leonardo',2:'Martin', 3:'Luciana'
  };
  print(estudiantes[1]);
  */
  
  String mensaje = saludar(texto:'Hola', name:'Leonardo');
  print(mensaje);
} 
  // En la funcion saludar se esta filtrando los tipos de datos esperados en los argumentos, y el orden que se quiere seguir
String saludar( { String texto, String name} ){
  return '$texto $name';
}
