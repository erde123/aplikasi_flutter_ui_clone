// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:aplikasi_flutter/detail_menu_page.dart';
import 'package:aplikasi_flutter/home_page.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

void main() => runApp(const MenuApp());

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  final List<FoodItem> foodItems = const [
    FoodItem(
      imagePath: 'assets/image/one.jpg',
      name: 'Ramen Noodle Soup',
      calories: '120 cal',
      time: '15 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/two.jpg',
      name: 'Nasi Goreng',
      calories: '120 cal',
      time: '15 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/three.jpg',
      name: 'Mie Goreng',
      calories: '120 cal',
      time: '15 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/four.jpg',
      name: 'Kepiting Telur Asin',
      calories: '160 cal',
      time: '30 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/five.jpg',
      name: 'Beef Steak',
      calories: '130 cal',
      time: '15 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/six.jpg',
      name: 'Fettuccine Carbonara',
      calories: '160 cal',
      time: '15 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/seven.jpg',
      name: 'Beef Rendang',
      calories: '200 cal',
      time: '45 Min',
      rating: '4.4',
      review: '23',
    ),
    FoodItem(
      imagePath: 'assets/image/eight.jpg',
      name: 'Rawon',
      calories: '170 cal',
      time: '35 Min',
      rating: '4.4',
      review: '23',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
          backgroundColor: Colors.white60,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black87,
              )),
          title: Text(
            "Quick & Easy",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            softWrap: true,
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black87,
                ))
          ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
            // child: ResponsiveGridList(
            //     horizontalGridSpacing: 16,
            //     verticalGridSpacing: 16,
            //     horizontalGridMargin: 50,
            //     verticalGridMargin: 50,
            //     minItemWidth: 300,
            //     children: buildCard(context, item: item)
            // );

          // child: FlexibleGridView(
          //   children: [
          //   ],
          // ),

          // child: AutoHeightGridView(
          //   itemCount: foodItems.length,
          //   builder: (context, index)
          //   => buildCard(context, item: foodItems[index]),
          // ),

          child: DynamicHeightGridView(
            itemCount: foodItems.length,
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            builder: (context, index) =>
              buildCard(context, item: foodItems[index]),
          ),

          // child: GridView.builder(
          //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       childAspectRatio: 0.95/1.05,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10),
          //   itemCount: foodItems.length,
          //   itemBuilder: (BuildContext context, int index) => buildCard(context,item: foodItems[index]),
          // ),
        ),
      ),
    ));
  }

  Widget buildCard(BuildContext context, {required FoodItem item}) {
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
              Expanded(
                child: Text(
                  item.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              children: [
                Icon(Icons.local_fire_department_outlined),
                Text(item.calories),
                SizedBox(width: 10),
                Icon(Icons.access_alarm),
                Text(item.time),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text('${item.rating} /5 (${item.review} Reviews)'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
