void main(){
  final wolverine = new Heroe(nombre:'Luz', apellido: 'Valdez');
//   wolverine.nombre = 'Logan';
//   wolverine.poder = 'Regeneración';
  print( wolverine );
}


class Heroe {

  String nombre;
  String apellido;
  // Esto es un contructor, ademas de que se puede generar como la segunda opcion
  Heroe({
    required this.nombre, 
    required this.apellido 
  });

//   Heroe( String pNombre ) {
//     this.nombre = pNombre;
//   }
  String toString() {
    return 'Nombre: nombre: ${this.nombre}, Apellido: ${ this.apellido }';
  }
}