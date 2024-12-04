import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Image(image: AssetImage('assets/images/download.jpg')),
      ),
    );
  }
}
