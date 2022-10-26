import 'package:flutter/material.dart';

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
      title: 'Healthy Habits',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,
        canvasColor: Colors.black,
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

