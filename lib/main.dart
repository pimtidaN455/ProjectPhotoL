// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:project_photo_learn/Howto/howtouse.dart';
import 'package:project_photo_learn/Start/start.dart';
import 'package:project_photo_learn/my_style.dart';

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
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showLogo(),
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

  Widget StartButton() {
    return RaisedButton(
      color: Color.fromARGB(255, 0, 0, 0),
      child: Text(
        'Start',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => Start_Register());
        Navigator.of(this.context).push(materialPageRoute);
      },
    );
  }

  Widget HowtoButton() {
    return RaisedButton(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Text(
        'How to use',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: () {
        //print('fuckkkkkkkkkkkkkkkkkkkk');

        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => HowToUse());
        Navigator.of(this.context).push(materialPageRoute);
      },
    );
  }
}
