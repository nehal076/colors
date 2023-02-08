import 'package:colors/ui/home/home.dart';
import 'package:flutter/material.dart';

/// The App Widget
class App extends StatelessWidget {
  /// App Widget constructor
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colors',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
