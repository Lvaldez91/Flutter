// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // out for paramaters
  int counts = 0;

  void increase() {
    counts++;
    setState(() {});
  }

  void decrease() {
    counts--;
    setState(() {});
  }

  void resetCrese() {
    counts = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 50);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar CounterScreen'),
        elevation: 1.0,
        backgroundColor: Colors.lightBlue,
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
      floatingActionButton: CustomFloatingActions(
        increseFn: increase,
        decreaseFn: decrease,
        resetCreseFn: resetCrese,
      ),
    );
  }
}

// con . + Ctrl - extrac Widget and create customFloatingActions
class CustomFloatingActions extends StatelessWidget {
  final Function increseFn;
  final Function decreaseFn;
  final Function resetCreseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increseFn,
    required this.decreaseFn,
    required this.resetCreseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increseFn(),
        ),
        // const SizedBox(
        //   width: 10,
        // ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
        // const SizedBox(
        //   width: 10,
        // ),
        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => resetCreseFn(),
        )
      ],
    );
  }
}
