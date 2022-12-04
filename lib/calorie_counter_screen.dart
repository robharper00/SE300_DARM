import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'meals_database_screen.dart';

const TITLE = 'Calories';

double calories = 0;
double newCalories = 0;
double totalCalories = 0;
TextEditingController calorieController = TextEditingController();

class CalorieCounterScreen extends StatefulWidget {
  const CalorieCounterScreen({super.key});

  @override
  State<CalorieCounterScreen> createState() => _CalorieCounterScreenState();
}

class _CalorieCounterScreenState extends State<CalorieCounterScreen> {
  void updateCalories(double calories, double newCalories) {
    calories = totalCalories;
    totalCalories = calories + newCalories;
    setState() {
      print(totalCalories);
      totalCalories;
      print(calories);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => MainMenu()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MealsDatabaseScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.food_bank,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.green,
        title: Text(
          TITLE,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 40, 37, 36),
                  width: double.infinity,
                  height: 50,
                  child: Text(
                    'Total Calories Today',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 40, 37, 36),
                  width: double.infinity,
                  height: 75,
                  child: Text(
                    totalCalories.toString(),
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(50),
                ),
                TextFormField(
                  controller: calorieController,
                  decoration: InputDecoration(
                    hintText: 'Please enter the # of calories in your meal.',
                    hintStyle: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  showCursor: false,
                  onFieldSubmitted: (value) {
                    setState(() {
                      newCalories = double.parse(calorieController.value.text);
                      print(newCalories);
                    });
                  },
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  color: Colors.green,
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        updateCalories(calories, newCalories);
                        calories;
                      });
                    },
                    child: Text(
                      'Submit Calories',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
