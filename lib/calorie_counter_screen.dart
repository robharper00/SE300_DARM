import 'package:flutter/material.dart';
import 'main_menu.dart';

const TITLE = 'Calorie Counter';

class CalorieCounterScreen extends StatefulWidget {
  const CalorieCounterScreen({super.key});

  @override
  State<CalorieCounterScreen> createState() => _CalorieCounterScreenState();
}

class _CalorieCounterScreenState extends State<CalorieCounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => MainMenu()),
            );
          },
        ),
        backgroundColor: Colors.green,
        title: Text(
          TITLE,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
