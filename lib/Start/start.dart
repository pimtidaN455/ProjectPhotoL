import 'package:flutter/material.dart';
import 'package:project_photo_learn/my_style.dart';

class Start_Register extends StatefulWidget {
  const Start_Register({Key? key}) : super(key: key);
  @override
  _StartRegisterState createState() => _StartRegisterState();
}

class _StartRegisterState extends State<Start_Register> {
  late double screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Create your name',
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.normal,
              fontFamily: 'Rajdhani',
            ),
          ),
          NameUser(),
          NextToHome(),
        ],
      ),
    ));
  }

  Container NextToHome() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.75,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Next'),
        style: ElevatedButton.styleFrom(
            primary: MyStyle().darkColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }

  Container NameUser() {
    return Container(
      // margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextField(
        decoration: InputDecoration(
            hintText: 'User Name',
            prefixIcon: Icon(Icons.perm_identity),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
