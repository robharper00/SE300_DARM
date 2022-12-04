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
  'Chicken Caesar Salad',
  'Chicken Fried Steak',
  'Chicken Marsala',
  'Chicken Parmesan',
  'Chicken Pot Pie',
  'Chicken Tikka Masala',
  'Chili con Carne',
  'Chimichanga',
  'Cobb Salad',
  'Collard Greens',
  'Corn Dog',
  'Corned Beef Hash',
  'Cottage Pie',
  'Dal',
  'Deviled Eggs',
  'Dim Sum',
  'Dosa',
  'Enchiladas',
  'Fajita',
  'Macaroni & Cheese',
  'Orange Chicken',
  'Peanut Butter Sandwich',
  'Potato Salad',
  'Shepherds Pie',
  'Sloppy Joes',
  'Taco',
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
  '392 calories',
  '423 calories',
  '2209 calories',
  '250 calories',
  '673 calories',
  '195 calories',
  '266 calories',
  '418 calories',
  '632 calories',
  '13 calories',
  '438 calories',
  '349 calories',
  '523 calories',
  '304 calories',
  '62 calories',
  '37 calories',
  '287 calories',
  '323 calories',
  '290 calories',
  '699 calories',
  '420 calories',
  '200 calories',
  '136 calories',
  '159 calories',
  '397 calories',
  '213 calories',
];

List<String> snacks = [
  'Alphabet Soup',
  'Apple',
  'Apple Pie',
  'Banana',
  'Beef Jerky',
  'Celery',
  'Chocolate Chip Ice Cream',
  'French Vanilla Ice Cream',
  'Fruit Salad',
  'Mango',
  'Pumpkin',
  'Sundae',
  'Watermelon',
];

List<String> snackCalories = [
  '62 calories',
  '95 calories',
  '296 calories',
  '111 calories',
  '82 calories',
  '6 calories',
  '155 calories',
  '145 calories',
  '125 calories',
  '202 calories',
  '51 calories',
  '155 calories',
  '86 calories',
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
            indicatorColor: Colors.black,
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
