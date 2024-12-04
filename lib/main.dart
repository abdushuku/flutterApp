import 'package:flutter/material.dart';
import '../page/HomePage.dart';
import '../page/SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 150, 100, 236)),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length:3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
            title: const Text('Home Page'),
          ),
          body: const TabBarView(
            children: [
              HomePage(title: 'Home Page'),
              Secondpage(title: 'Second Page'),
              Secondpage(title: 'Third Page'),
            ],
          ),
        ),
      ),
      
    );
  }
}



