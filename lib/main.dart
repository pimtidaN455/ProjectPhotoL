// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
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
        appBar: AppBar(
          title: Text('Welcome to Photo Learn'),
        ),
        body: Center(
            child: Column(
          children: [
            Text(
              'Photo Learn',
              style: TextStyle(
                fontSize: 60,
                color: Color.fromARGB(255, 92, 105, 152),
              ),
            ),
            Image(
              image: NetworkImage(
                  'https://png.pngtree.com/element_our/20190601/ourmid/pngtree-buffalo-hand-painted-realistic-buffalo-cattle-bull-image_1341724.jpg'),
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.navigate_next),
              label: Text('Start'),
              color: Colors.blueAccent,
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.auto_stories),
              label: Text('How to use'),
              color: Colors.blueAccent,
            ),
          ],
        )));
  }
}
