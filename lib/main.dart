// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:project_photo_learn/Howto/howtouse.dart';
import 'package:project_photo_learn/Howto/sumlong.dart';
import 'package:project_photo_learn/Start/start_register.dart';
import 'package:project_photo_learn/Start/start_login.dart';
import 'package:project_photo_learn/my_style.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
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
        body: SafeArea(
            child: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 200),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                    child: Image.asset(
                      'images/logo2.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'PHOTO\nLEARNN',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 35,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: ShowButton(),
                        ),
                      ],
                    ),
                  ),
                ])
          ],
        ),
      ),
    )));
  }

  Widget ShowButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
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
      color: Color(0xFF4B39EF),
      child: Text(
        'Start',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Startlogin());
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
            MaterialPageRoute(builder: (BuildContext context) => HowToUse2());
        Navigator.of(this.context).push(materialPageRoute);
      },
    );
  }
}
