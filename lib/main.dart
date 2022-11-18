import 'package:flutter/material.dart';

const TITLE = 'Healthy Habits';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TITLE,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.white,
        canvasColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            TITLE,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Welcome to Healthy Habits! Please select an option below.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: (() =>
                      print('test')), // until i implement the other screens
                  child: Text(
                    'PEDOMETER',
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 40, 37, 36)),
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: (() =>
                      print('test')), // until i implement the other screens
                  child: Text(
                    'TRACK YOUR CALORIES',
                    style: TextStyle(fontSize: 30),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 40, 37, 36)),
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: (() =>
                      print('test')), // until i implement the other screens
                  child: Text(
                    'TRACK YOUR HEART RATE',
                    style: TextStyle(fontSize: 28),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 40, 37, 36)),
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Container(
                width: double.infinity,
                height: 150.0,
                child: ElevatedButton(
                  onPressed: (() =>
                      print('test')), // until i implement the other screens
                  child: Text(
                    'USER SURVEY',
                    style: TextStyle(fontSize: 28),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 40, 37, 36),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
