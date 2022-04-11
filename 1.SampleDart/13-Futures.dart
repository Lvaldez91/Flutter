void main() {
  print('Antes de la petición');

// el .then es lo que se ejecuta despues de
  httpGet('https://api.nasa.com/aliens')
    .then( (data) {
    print( data.toUpperCase() );
  });

  print('Fin del programa');
}

Future<String> httpGet( String url ) {
  return Future.delayed( 
    Duration( seconds: 3 ), () =>'Hola Mundo - 3 segundos' 
  );
}
