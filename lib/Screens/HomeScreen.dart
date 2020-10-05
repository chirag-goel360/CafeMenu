import 'package:coffee_shop/Models/CakeModel.dart';
import 'package:coffee_shop/Models/CoffeeModel.dart';
import 'package:coffee_shop/Screens/Details.dart';
import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CoffeeDataModel> coffeedata = [
    CoffeeDataModel("assets/Coffee/Con panna.jpg", "Con Panna",300,"The Espresso con Panna means espresso with cream in Italian. Before baristas everywhere were putting whipped cream on lattes, Espresso con Panna was served in Europe with real whipped cream on an espresso shot in a demitasse. This drink is also popular in France and Budapest. We would recommend this drink for quite times and a good book. This simple Espresso Con Panna recipe will add some sweetness and energy to your day. Enjoy this italian-inspired drink on a break or weekend."),
    CoffeeDataModel("assets/Coffee/Flat white.jpg","Flat White",200,"A flat white is an espresso drink made with a shot of espresso and two shots of steamed milk. It takes a little bit of skill to prepare, but once you've mastered this recipe, it's easy to make flat white espresso drinks again and again."),
    CoffeeDataModel("assets/Coffee/Mocha.jpg","Mocha",250,"All you need is a cup of hot coffee to cheer up your mood. Be it a date or some casual outing with friends, a steaming cup of coffee is a must-have. Mocha or mochaccino is a popular coffee type which is loved by people of all age groups. It is named after the city of Mocha in Yemen. It has a chocolate flavour which makes it so delicious."),
    CoffeeDataModel("assets/Coffee/Vienna.jpg","Vienna",280,"Vienna Coffee is the name of a popular traditional cream-based coffee beverage. It is made by preparing two shots of strong black espresso in a standard sized coffee cup and infusing the coffee with whipped cream (as a replacement for milk and sugar) until the cup is full. Then the cream is twirled and optionally topped off with chocolate sprinklings. The coffee is drunk through the creamy top."),
  ];
  final List<CakeDataModel> cakedata = [

  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch(selectedIndex)
    {
      case 0:
        child = _listWidgetCoffee();
        break;
      case 1:
        child =  Text("hello1");
        break;
      case 2:
        child =  Text("hello2");
        break;
      case 3:
        child =  Text("hello3");
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to Coffee Shop",
        ),
        backgroundColor: Colors.teal.shade300,
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
      body: SizedBox.expand(
        child: child,
      ),
    );
  }

  _listWidgetCoffee() {
    return ListView.builder(
      itemCount: coffeedata.length,
      itemBuilder: (BuildContext context,int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(
              title: coffeedata[index].title,
              img: coffeedata[index].image,
              price: coffeedata[index].price,
              info: coffeedata[index].information,
              ),
              ),
              );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 90,
                      width: 90,
                      child: Image.asset(
                        coffeedata[index].image,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Text(
                        coffeedata[index].title,
                        style: TextStyle(
                            fontSize: 16
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
