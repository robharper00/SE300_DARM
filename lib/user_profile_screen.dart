import 'package:flutter/material.dart';
import 'main_menu.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  double height = 0;
  double weight = 0;
  double bmi = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  void calculateBMI(double height, double weight) {
    double finalResult = (weight / (height * height)) * 703;
    double result = finalResult;
    setState(() {
      bmi = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => MainMenu(),
                ),
              );
            },
            icon: Icon(
              Icons.check,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Please enter your full name.',
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              showCursor: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
            ),
            TextFormField(
              controller: genderController,
              decoration: InputDecoration(
                hintText: 'Please enter your gender.',
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              showCursor: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Please enter your age.',
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
            ),
            TextFormField(
              controller: heightController,
              decoration: InputDecoration(
                hintText: 'Please enter your height in inches.',
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onFieldSubmitted: (value) {
                setState(() {
                  height = double.parse(heightController.value.text);
                  print(height);
                });
              },
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
            ),
            TextFormField(
              controller: weightController,
              decoration: InputDecoration(
                hintText: 'Please enter your weight in pounds.',
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onFieldSubmitted: (value) {
                setState(() {
                  print(weight);
                  weight = double.parse(weightController.value.text);
                  calculateBMI(height, weight);
                });
              },
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Your Current BMI',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text(
                  bmi.toStringAsFixed(2),
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
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
