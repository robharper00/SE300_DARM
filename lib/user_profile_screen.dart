import 'package:flutter/material.dart';
import 'main_menu.dart';

String BMI = '';
String WEIGHT = '';
String HEIGHT = '';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  String setBMI(String HEIGHT, String WEIGHT) {
    double x, y, z, doubleBMI;
    print(WEIGHT);
    print(HEIGHT);
    x = double.parse(WEIGHT);
    y = double.parse(HEIGHT);
    z = x / y;
    doubleBMI = z * 703;
    BMI = doubleBMI.toString();
    setState(() {
      BMI = doubleBMI.toString();
    });
    return BMI;
  }

  String setWeight(String WEIGHT) {
    print(WEIGHT);
    return WEIGHT;
  }

  String setHeight(String HEIGHT) {
    print(HEIGHT);
    return HEIGHT;
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
              initialValue: null,
              showCursor: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Please enter your full name',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            TextFormField(
              initialValue: null,
              showCursor: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Please enter your gender',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            TextFormField(
              initialValue: null,
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Please enter your age',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            TextFormField(
              initialValue: null,
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onFieldSubmitted: (value) => {
                setHeight(HEIGHT),
                setBMI(HEIGHT, WEIGHT),
              },
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Please enter your height in inches.',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            TextFormField(
              initialValue: null,
              showCursor: false,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              onFieldSubmitted: (value) => {
                setWeight(WEIGHT),
                setBMI(HEIGHT, WEIGHT),
              },
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                ),
                Text(
                  'Please enter your weight in pounds',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                ),
                Text(
                  'Your Current BMI',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '0.0',
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
