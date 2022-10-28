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
          title: Text(TITLE),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  'Welcome to Healthy Habits! Please select an option below.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                color: Color.fromARGB(255, 40, 37, 36),
                child: Column(
                  children: [
                    Text(
                      'Pedometer: Track Your Steps Here!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                        ),
                        CircleAvatar(
                          radius: 75,
                          child: Text(
                            '95000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 48,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
      // title: 'Healthy Habits',
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: COLOR_MINT,
      //     title: Text(
      //       'Healthy Habits',
      //       style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      //     ),
      //   ),
      //   body: Column(
      //     children: [
      //       Text(
      //         "Welcome! Please select an option from the menu!",
      //         style: TextStyle(fontSize: 28),
      //         textAlign: TextAlign.center,
      //       ),
      //       ElevatedButton(
      //         onPressed: () => print("Survey Loading..."),
      //         child: Text('Take Survey'),
      //         style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(COLOR_MINT),
      //           foregroundColor: MaterialStateProperty.all(Colors.black),
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => print("Item 2 Loading..."),
      //         child: Text('Item 2'),
      //         style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(COLOR_MINT),
      //           foregroundColor: MaterialStateProperty.all(Colors.black),
      //         ),
      //       ),
      //       ElevatedButton(
      //         onPressed: () => print("Item 3 Loading..."),
      //         child: Text('Item 3'),
      //         style: ButtonStyle(
      //           backgroundColor: MaterialStateProperty.all(COLOR_MINT),
      //           foregroundColor: MaterialStateProperty.all(Colors.black),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

