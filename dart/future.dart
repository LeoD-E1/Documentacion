/* Un future es una tarea asincrona que se hace independientemente
 al hilo principal que estamos ejecutando y que cuando se resuelve
 (Cuando ya obtenemos el valor de regreso) podemos seguir ejecutando 
 otra cosa*/


Future <String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 4), (){return 'Hello World!';});
}

void main(){
  print('Primera linea');
  httpGet('http://wwww.google.com/trade').then( (data) {
    print(data);
  });
  
  print('Ultima linea');
}