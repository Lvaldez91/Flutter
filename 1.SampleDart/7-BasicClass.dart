void main(){
  final datos = new Caracteristicas(nombre:'Lucero', apellido: 'Valdez');

//   datos.nombre = 'Lucero';
//   datos.apellido = 'Valdez';

  print( datos );
}


class Caracteristicas {

  String nombre;
  String apellido;

  Caracteristicas({
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