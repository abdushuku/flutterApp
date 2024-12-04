import 'package:flutter/material.dart';
import '../Components/IncrementButton.dart';
import '../Components/DecrementButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _number = 0;

  void _incrementCounter() {
    setState(() {
      _number++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            const Text(
              'You have pushed the button times:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '$_number',
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Decrementbutton(decrementCounter:_decrementCounter ),
            IncrementButton(incrementCounter: _incrementCounter)
          ],
        ),
      ),
    );
  }
}