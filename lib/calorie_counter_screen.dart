import 'package:flutter/material.dart';
import 'main_menu.dart';

const TITLE = 'Calories';

List<String> meals = [
  'Baby Back Ribs',
  'Beef',
  'Chicken',
  'Pork Chops',
];

List<String> mealCalories = [
  '360 calories',
  '407 calories',
  '731 calories',
  '257 calories',
];
List<String> snacks = [
  'Beef Jerky',
  'Apple Pie',
];
List<String> snackCalories = [
  '82 calories',
  '296 calories',
];
final textController = TextEditingController();
int mealIndex = 0;
IconData MealIcon = Icons.food_bank;

class CalorieCounterScreen extends StatefulWidget {
  const CalorieCounterScreen({super.key});

  @override
  State<CalorieCounterScreen> createState() => _CalorieCounterScreenState();
}

class _CalorieCounterScreenState extends State<CalorieCounterScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onPressed: null,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.today), text: 'Today'),
              Tab(icon: Icon(Icons.history), text: 'History'),
              Tab(icon: Icon(Icons.food_bank), text: 'Meals'),
              Tab(icon: Icon(Icons.apple), text: 'Snacks'),
            ],
          ),
          backgroundColor: Colors.green,
          title: Text(TITLE, style: TextStyle(color: Colors.black)),
        ),
        body: TabBarView(
          children: [
            todayPage(),
            buildPage('History'),
            mealPage(),
            snackPage(),
          ],
        ),
      ),
    );
  }
}

Widget buildPage(String text) => Center(
      // Bootleg function to keep TabBar functionality working
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );

Widget todayPage() => Column(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.blueGrey, // test color to see actual container
              //color: Color.fromARGB(255, 40, 37, 36), // color for when this is finished
              width: double.infinity,
              height: 100,
              child: Text('Total Calories'),
            ),
          ],
        ),
      ],
    );

Widget mealPage() => ListView.builder(
      itemCount: meals.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              meals[index],
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Text(
              mealCalories[index],
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        );
      },
    );

Widget snackPage() => ListView.builder(
      itemCount: snacks.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.blueGrey,
          child: ListTile(
            title: Text(
              snacks[index],
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            trailing: Text(
              snackCalories[index],
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        );
      },
    );
