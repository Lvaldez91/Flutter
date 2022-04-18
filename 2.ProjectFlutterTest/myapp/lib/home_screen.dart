import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 50);
    int counts = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Home'),
        elevation: 1.0,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Número de clicks: ', style: fontSize30),
            Text('$counts', style: fontSize30)
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counts++;
        },
      ),
    );
  }
}
