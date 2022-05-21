import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Howto(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class Howto extends StatefulWidget {
  const Howto({Key? key}) : super(key: key);

  @override
  _HowtoState createState() => _HowtoState();
}

class _HowtoState extends State<Howto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        )
      ]),
    );
  }
}
