import 'package:flutter/material.dart';
import 'package:project_photo_learn/my_style.dart';
import 'package:project_photo_learn/Start/start_register.dart';

class Startlogin extends StatefulWidget {
  const Startlogin({Key? key}) : super(key: key);
  @override
  _StartloginState createState() => _StartloginState();
}

class _StartloginState extends State<Startlogin> {
  late double screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.normal,
              fontFamily: 'Rajdhani',
            ),
          ),
          Emaill(),
          Passwordd(),
          NextToHome(),
          Regis1(),
        ],
      ),
    ));
  }

  Container Emaill() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'E-mail',
            prefixIcon: Icon(Icons.perm_identity),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }

  Container Passwordd() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.perm_identity),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
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

  InkWell Regis() {
    return InkWell(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Start_Register(),
          ),
        );
      },
      child: Text(
        ' Create Account',
        style: TextStyle(
          color: Color(0xFF4B39EF),
          fontSize: 20,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }

  Container Regis1() {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 15,
              fontFamily: 'Poppins',
            ),
          ),
          Regis()
        ],
      ),
    );
  }
}
