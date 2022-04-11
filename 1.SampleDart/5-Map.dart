void main() {

//   Map persona = {
//     'nombre': 'Fernando',
//     'edad': 35,
//     'soltero': false,
//     true: false,
//     1: 100,
//     2: 500
//   };
// Map se define el tipo de dato <tipo de dato, Tipo de dato> si es dynamic entonces no es un tipo de dato fijo.
  Map<String, dynamic> persona = {
    'nombre': 'Fernando',
    'edad': 35,
    'soltero': false,
  };

  persona.addAll({ 'segundoNombre': 'Juan' });
  print( persona );
}