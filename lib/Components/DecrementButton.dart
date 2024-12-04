
import 'package:flutter/material.dart';
class Decrementbutton extends StatelessWidget {
  const Decrementbutton({super.key, required this.decrementCounter});
  final VoidCallback decrementCounter;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: decrementCounter,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    );
  }
}