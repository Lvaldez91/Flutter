void main() {

/*
Null Safety : es cuando se aceptan valores nulos
si y solo si se declara con ?, en variable, funciones, etc
*/
  bool? isActive = null;

  if ( isActive == null ) {
    print( 'isActive es null' );
  } else {
    print( 'No es null' );
  }
}