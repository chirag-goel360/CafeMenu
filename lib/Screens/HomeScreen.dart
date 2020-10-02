import 'package:coffee_shop/Models/CoffeeModel.dart';
import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CoffeeDataModel> coffeedata = [

  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        title: Text(
            "Welcome to Coffee Shop",
        ),
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: selectedIndex,
        items: [
          FlipBarItem(
            icon: FaIcon(
              FontAwesomeIcons.coffee,
              color: Color.fromRGBO(122,81,57,0.8),
            ),
            text: Text(
              "Coffee",
              style: TextStyle(
                color: Color.fromRGBO(122,83,57,1),
                fontSize: 14,
              ),
            ),
            frontColor: Colors.brown.shade400,
            backColor: Colors.brown.shade200,
          ),
          FlipBarItem(
            icon: FaIcon(
              FontAwesomeIcons.birthdayCake,
              color: Color.fromRGBO(247,142,183,0.8),
            ),
            text: Text(
              "Cake",
              style: TextStyle(
                color: Color.fromRGBO(247,142,183,1),
                fontSize: 14,
              ),
            ),
            frontColor: Colors.pink.shade400,
            backColor: Colors.pinkAccent.shade400,
          ),
          FlipBarItem(
            icon: Icon(
              Icons.kitchen,
              color: Color.fromRGBO(197,26,28,0.8),
            ),
            text: Text(
              "Ice-Cream",
              style: TextStyle(
                color: Color.fromRGBO(197,26,28,1),
                fontSize: 14,
              ),
            ),
            frontColor: Colors.red.shade400,
            backColor: Colors.red.shade200,
          ),
          FlipBarItem(
            icon: Icon(
              Icons.fastfood,
              color: Color.fromRGBO(16,203,28,0.8),
            ),
            text: Text(
              "Fast Food",
              style: TextStyle(
                color: Color.fromRGBO(16,203,28,1),
              ),
            ),
            frontColor: Colors.lightGreen.shade400,
            backColor: Colors.lightGreenAccent.shade400,
          ),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }
}
