/*Async y awair: Asyn ayuda a transformar una funcion en una tarea asincrona y el await
 * permite esperar hasta que esta se resuelva, ya sea que de un error o que se resuelva */

void main() async{
  
  print('Primera linea');
  
  String data = await httpGet('http://wwww.google.com/trade');
  print(data);
  print('Ultima linea');
}

Future <String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4), (){return 'Hello World!';});
}
