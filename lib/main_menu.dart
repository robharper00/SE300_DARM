import 'package:flutter/material.dart';
import 'package:healthy_habits/user_profile_screen.dart';
import 'pedometer_screen.dart';
import 'heart_rate_screen.dart';
import 'calorie_counter_screen.dart';
import 'credits_screen.dart';
import 'notifications_screen.dart';

const TITLE = 'Healthy Habits';

class MainMenu extends StatefulWidget {
  static const routeName = '/main-menu';
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          TITLE,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
              );
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreditsScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
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
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserProfileScreen()),
                  );
                },
                child: Text(
                  'USER PROFILE',
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
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Container(
              width: double.infinity,
              height: 150.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PedometerScreen()),
                  );
                },
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalorieCounterScreen()),
                  );
                },
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HeartRateScreen()),
                  );
                },
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
          ],
        ),
      ),
    );
  }
}
