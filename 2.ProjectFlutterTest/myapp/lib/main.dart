// siempre debe tener un main
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // le colocamos const porque MaterialApp no cambia, Center o Text tampoco por eso es constante
    return const MaterialApp(
      home: Center(child: Text('Hello World')),
    );
  }
}
