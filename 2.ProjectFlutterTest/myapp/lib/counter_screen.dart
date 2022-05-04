import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // out for paramaters
  int counts = 0;
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar CounterScreen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => {
              // function anonime
              setState(() => counts++),
            },
          ),
          // const SizedBox(
          //   width: 10,
          // ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => {
              // function anonime
              setState(() => counts--),
            },
          ),
          // const SizedBox(
          //   width: 10,
          // ),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () => {
              setState(() => counts = 0),
            },
          )
        ],
      ),
    );
  }
}
