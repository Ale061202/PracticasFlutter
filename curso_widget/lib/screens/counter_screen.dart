import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //variable, propiedad

  int counter = 0;

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               const Text('Counter clicks', style: fontSize30 ),
              Text('$counter', style: fontSize30 ),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => setState(() => counter++),
          ),
        
          FloatingActionButton(
            child: const Icon(Icons.exposure_outlined),
            onPressed: () => setState(() => counter = 0),
          ),

          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => setState(() => counter--),
          )
        ],
      ),
    );
  }
}