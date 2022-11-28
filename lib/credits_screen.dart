import 'package:flutter/material.dart';
import 'main_menu.dart';

class CreditsScreen extends StatefulWidget {
  const CreditsScreen({super.key});

  @override
  State<CreditsScreen> createState() => _CreditsScreenState();
}

class _CreditsScreenState extends State<CreditsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => MainMenu()),
            );
          },
        ),
        title: Text(
          'Credits',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'This application was created by DARM Wellness.',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Text(
                'Meet the Team!',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Anthony Maugeri',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Dana Merry',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Michelle Holvani',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                'Rob Harper',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
