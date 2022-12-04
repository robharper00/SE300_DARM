import 'package:flutter/material.dart';
import 'package:healthy_habits/calorie_counter_screen.dart';

List<String> meals = [
  'Baby Back Ribs',
  'Bacon and Eggs',
  'Baked Beans',
  'Baked Chicken',
  'BBQ Ribs',
  'Beef Stew',
  'Biryani',
  'Black Pudding',
  'Black Rice',
  'BLT',
  'Brown Rice',
  'Burrito',
  'Butter Chicken',
  'California Roll',
];

List<String> mealCalories = [
  '360 calories',
  '539 calories',
  '244 calories',
  '282 calories',
  '360 calories',
  '186 calories',
  '484 calories',
  '101 calories',
  '323 calories',
  '593 calories',
  '670 calories',
  '326 calories',
  '490 calories',
  '33 calories',
];

List<String> snacks = [
  'Beef Jerky',
  'Apple Pie',
];

List<String> snackCalories = [
  '82 calories',
  '296 calories',
];

class MealsDatabaseScreen extends StatefulWidget {
  const MealsDatabaseScreen({super.key});

  @override
  State<MealsDatabaseScreen> createState() => _MealsDatabaseScreenState();
}

class _MealsDatabaseScreenState extends State<MealsDatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => CalorieCounterScreen()),
              );
            },
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.food_bank,
                  color: Colors.black,
                ),
                text: 'Meals',
              ),
              Tab(
                icon: Icon(Icons.apple, color: Colors.black),
                text: 'Snacks',
              ),
            ],
          ),
          backgroundColor: Colors.green,
          title: Text(
            'Meals & Snacks Database',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            mealPage(),
            snackPage(),
          ],
        ),
      ),
    );
  }
}

Widget mealPage() => ListView.builder(
      itemCount: meals.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.green,
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
          color: Colors.green,
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
