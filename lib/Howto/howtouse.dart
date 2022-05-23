import 'package:flutter/material.dart';

class HowToUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Text(
                'Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name Create your name ',
                style: TextStyle(
                  fontSize: 50,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  //fontStyle: FontStyle.normal,
                  fontFamily: 'Rajdhani',
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
