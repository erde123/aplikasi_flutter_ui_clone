// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aplikasi_flutter/detail_menu_page.dart';
import 'package:aplikasi_flutter/menu_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class FoodItem {
  final String imagePath;
  final String name;
  final String calories;
  final String time;
  final String rating;
  final String review;

  const FoodItem({
    required this.imagePath,
    required this.name,
    required this.calories,
    required this.time,
    required this.rating,
    required this.review,
  });
}

class MyApp extends StatelessWidget {
  final List<FoodItem> foodItems = const [
    FoodItem(
        imagePath: 'assets/image/one.jpg',
        name: 'Ramen Noodle Soup',
        calories: '120 cal',
        time: '15 Min',
        rating: '4.4',
        review: '23'),
    FoodItem(
        imagePath: 'assets/image/two.jpg',
        name: 'Nasi Goreng',
        calories: '120 cal',
        time: '15 Min',
        rating: '4.4',
        review: '23'),
    FoodItem(
        imagePath: 'assets/image/three.jpg',
        name: 'Mie Goreng',
        calories: '120 cal',
        time: '15 Min',
        rating: '4.4',
        review: '23'),
    FoodItem(
        imagePath: 'assets/image/four.jpg',
        name: 'Kepiting Telur Asin',
        calories: '160 cal',
        time: '30 Min',
        rating: '4.4',
        review: '23'),
    FoodItem(
        imagePath: 'assets/image/five.jpg',
        name: 'Beef Steak',
        calories: '130 cal',
        time: '15 Min',
        rating: '4.4',
        review: '23'),
    FoodItem(
        imagePath: 'assets/image/six.jpg',
        name: 'Fettuccine Carbonara',
        calories: '160 cal',
        time: '15 Min',
        rating: '4.4',
        review: '23'),
  ];

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(236, 236, 236, 1.0),
        appBar: AppBar(
          // backgroundColor: Color.fromRGBO(236, 236, 236, 1.0),
          title: Text(
            "What are you cooking today",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            softWrap: true,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 0.8),
                      ),
                      hintText: 'Search any recipe..',
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(73, 191, 104, 1),
                    ),
                    height: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.lightGreen,
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("All"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Breakfast"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Lunch"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Dinner"),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // spacing: 170,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Quick & Easy",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.lightBlueAccent,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return MenuApp();
                                    }));
                              },
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 400,
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: foodItems.length,
                              separatorBuilder: (BuildContext context, _) =>
                                  SizedBox(
                                    width: 12,
                                  ),
                              itemBuilder: (BuildContext context, int index) =>
                                  buildCard(context, item: foodItems[index]),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite),
        //       label: 'Favorite',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.fastfood_rounded),
        //       label: 'Meal Plan',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'Settings',
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Widget buildCard(BuildContext context,{required FoodItem item}) {
    return Container(
      width: 300,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Ink.image(
              image: AssetImage(item.imagePath),
              fit: BoxFit.cover,
                child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailMenuPage(
                              item: item,
                            )))),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 5),
              Text(
                item.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 5),
              Icon(Icons.local_fire_department_outlined),
              Text(item.calories),
              SizedBox(width: 30),
              Icon(Icons.access_alarm),
              Text(item.time),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 5),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("${item.rating} /5 (${item.review} Reviews)"),
            ],
          ),
        ],
      ),
    );
  }
}
