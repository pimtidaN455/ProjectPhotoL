import 'package:flutter/material.dart';
import 'package:project_photo_learn/my_style.dart';
import 'package:project_photo_learn/main.dart';
import 'package:project_photo_learn/Start/start_login.dart';

class Start_Register extends StatefulWidget {
  const Start_Register({Key? key}) : super(key: key);
  @override
  _StartRegisterState createState() => _StartRegisterState();
}

class _StartRegisterState extends State<Start_Register> {
  late double screen;
  @override
  bool _isObscure = true;
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Startlogin()));
            },
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.normal,
                  fontFamily: 'Rajdhani',
                ),
              ),
              FirstName(),
              LastName(),
              Emailre(),
              PassWordre(),
              conFP(),
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

  Container FirstName() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'FirstName',
            prefixIcon: Icon(Icons.perm_identity),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }

  Container LastName() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'LastName',
            prefixIcon: Icon(Icons.perm_identity),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }

  Container Emailre() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'E-mail',
            prefixIcon: Icon(Icons.email_outlined),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }

  Container PassWordre() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        obscureText: _isObscure,
        decoration: InputDecoration(
            labelText: 'Password',
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }

  Container conFP() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.8,
      child: TextFormField(
        obscureText: _isObscure,
        decoration: InputDecoration(
            labelText: 'Confirm password',
            prefixIcon: Icon(Icons.password),
            suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            enabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            focusedBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
