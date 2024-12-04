import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key, required this.incrementCounter});
  final VoidCallback incrementCounter;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
