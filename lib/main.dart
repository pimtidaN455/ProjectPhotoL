// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Welcome to Flutter',
      home: MyHomePage(),
      //theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Welcome to Photo Learn'),
        // ),
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'photo learn',
          style: TextStyle(
            fontSize: 60,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            //fontStyle: FontStyle.normal,
            fontFamily: 'Rajdhani',
          ),
        ),
        // Image(
        //   image: NetworkImage(
        //       'https://png.pngtree.com/element_our/20190601/ourmid/pngtree-buffalo-hand-painted-realistic-buffalo-cattle-bull-image_1341724.jpg'),
        // ),
        ShowButton(),
      ],
    )));
  }

  Widget ShowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        HowtoButton(),
        SizedBox(
          width: 10.0,
        ),
        StartButton(),
      ],
    );
  }
}

Widget StartButton() {
  return RaisedButton(
    color: Color.fromARGB(255, 0, 0, 0),
    child: Text(
      'Start',
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {},
  );
}

Widget HowtoButton() {
  return RaisedButton(
    color: Color.fromARGB(255, 255, 255, 255),
    child: Text('How to use'),
    onPressed: () {},
  );
}
