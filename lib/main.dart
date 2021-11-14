import 'package:carteira_digital/home_app.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  // This widget is the root of your application.
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
          title: Center(child: Text('Carteira')),
        ),
        body: HomeApp(),
      ),
    );
  }
}
