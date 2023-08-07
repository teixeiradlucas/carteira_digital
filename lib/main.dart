import 'package:carteira_digital/constants.dart';
import 'package:carteira_digital/home_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carteira Digital',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: const Center(
            child: Text(
              'Carteira',
            ),
          ),
        ),
        body: const HomeApp(),
      ),
    );
  }
}
