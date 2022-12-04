import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'notification_api.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  TextEditingController notiController = TextEditingController();
  String notiBody = '';
  void initState() {
    super.initState;
    Noti.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Text(
              'Please enter what you would like your reminder to be, and how long you would like to wait for the reminder.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(50),
            ),
            TextFormField(
              controller: notiController,
              decoration: InputDecoration(
                hintText: 'Enter reminder you want to receive.',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              textAlign: TextAlign.center,
              showCursor: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
              onFieldSubmitted: (value) {
                notiBody = value;
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter time until reminder in minutes.',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
              textAlign: TextAlign.center,
              showCursor: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
            ),
            Container(
              padding: EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Noti.showBigTextNotification(
                      title: 'Healthy Habits',
                      body: notiBody,
                      fln: flutterLocalNotificationsPlugin);
                },
                child: Text(
                  'Submit Notification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
