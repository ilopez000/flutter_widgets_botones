import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Buttons Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _buttonColor = Colors.blue;

  void _changeButtonColor() {
    setState(() {
      _buttonColor = _buttonColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _changeButtonColor,
              child: Text('ElevatedButton'),
              style: ElevatedButton.styleFrom(
                primary: _buttonColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 10), // Espacio entre botones
            TextButton(
              onPressed: _changeButtonColor,
              child: Text('TextButton'),
              style: TextButton.styleFrom(
                primary: _buttonColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: _changeButtonColor,
              child: Text('OutlinedButton'),
              style: OutlinedButton.styleFrom(
                primary: _buttonColor,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 10),
            IconButton(
              icon: Icon(Icons.star, size: 40),
              onPressed: _changeButtonColor,
              color: _buttonColor,
              iconSize: 50,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
            // Agrega aquí más botones si lo deseas
          ],
        ),
      ),
    );
  }
}
