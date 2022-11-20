import 'package:flutter/material.dart';
import 'pedometer_screen.dart';
import 'main_menu.dart';
import 'calorie_counter_screen.dart';
import 'heart_rate_screen.dart';
import 'user_survey_screen.dart';

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
      //home: null
      initialRoute: '/',
      routes: {
        '/': (ctx) => MainMenu(),
        PedometerScreen.routeName: (ctx) => PedometerScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => MainMenu());
      },
    );
  }
}
