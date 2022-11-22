import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidegets extends StatefulWidget {
  const CounterWidegets({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWidegets> createState() => _CounterWidegetsState();
}

class _CounterWidegetsState extends State<CounterWidegets> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              _decrementCounter();
            },
            icon: const Icon(Icons.remove),
          ),
          Text(
            '$_counter',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {
              _incrementCounter();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
