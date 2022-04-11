void main(){
  final rawJson = {
    'nombre': 'Luz Maria',
    'apellido': 'Valdez'
  };
//   final ironman = new Heroe( nombre: rawJson['nombre']!, poder: rawJson['poder']! );
  final datos = Caracteristicas.fromJson( rawJson );

  print(datos);
//   final wolverine = new Heroe(nombre:'Logan', poder: 'Regeneración');
//   print( wolverine );
}


class Caracteristicas {
  String nombre;
  String apellido;

  Caracteristicas({
    required this.nombre,
    required this.apellido
  });

  Caracteristicas.fromJson( Map<String, String> json  ):
    this.nombre = json['nombre']!,
    this.apellido  = json['poder'] ?? 'No tiene poder';

  String toString() {
    return 'Nombre: ${this.nombre}, Apellido: ${ this.poder }';
  }
}