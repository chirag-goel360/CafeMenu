import 'package:coffee_shop/Models/CakeModel.dart';
import 'package:coffee_shop/Models/CoffeeModel.dart';
import 'package:coffee_shop/Models/IceCreamModel.dart';
import 'package:coffee_shop/Screens/DetailsCake.dart';
import 'package:coffee_shop/Screens/DetailsCoffee.dart';
import 'package:coffee_shop/Screens/DetailsIceCream.dart';
import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CoffeeDataModel> coffeedata = [
    CoffeeDataModel("assets/Coffee/Con panna.jpg", "Con Panna",300,330,360,"The Espresso con Panna means espresso with cream in Italian. Before baristas everywhere were putting whipped cream on lattes, Espresso con Panna was served in Europe with real whipped cream on an espresso shot in a demitasse. This drink is also popular in France and Budapest. We would recommend this drink for quite times and a good book. This simple Espresso Con Panna recipe will add some sweetness and energy to your day. Enjoy this italian-inspired drink on a break or weekend."),
    CoffeeDataModel("assets/Coffee/Flat white.jpg","Flat White",200,240,260,"A flat white is an espresso drink made with a shot of espresso and two shots of steamed milk. It takes a little bit of skill to prepare, but once you've mastered this recipe, it's easy to make flat white espresso drinks again and again."),
    CoffeeDataModel("assets/Coffee/Mocha.jpg","Mocha",250,270,285,"All you need is a cup of hot coffee to cheer up your mood. Be it a date or some casual outing with friends, a steaming cup of coffee is a must-have. Mocha or mochaccino is a popular coffee type which is loved by people of all age groups. It is named after the city of Mocha in Yemen. It has a chocolate flavour which makes it so delicious."),
    CoffeeDataModel("assets/Coffee/Vienna.jpg","Vienna",280,300,320,"Vienna Coffee is the name of a popular traditional cream-based coffee beverage. It is made by preparing two shots of strong black espresso in a standard sized coffee cup and infusing the coffee with whipped cream (as a replacement for milk and sugar) until the cup is full. Then the cream is twirled and optionally topped off with chocolate sprinklings. The coffee is drunk through the creamy top."),
  ];
  final List<CakeDataModel> cakedata = [
    CakeDataModel("assets/Cake/BlueBerry.jpg","Blue Berry CupCake",50,65,75,"Bursting with fresh blueberries with a tender crumb and sparkling sugar crust, these really are the best blueberry muffins.These blueberry cupcakes are breakfast for dessert. Fresh blueberries are mixed into vanilla cake -- rather than muffin -- batter, which is then topped with cinnamon streusel and swirls of blueberry-cream cheese icing."),
    CakeDataModel("assets/Cake/Chocolate.jpg","Chocolate CupCake",50,65,75,"These Moist Chocolate Cupcakes are completely from scratch & full of chocolate flavor! The cupcake is so moist, it melts in your mouth and the frosting is made with real melted chocolate for a silky smooth, super chocolatey frosting you won’t want to stop eating!"),
    CakeDataModel("assets/Cake/ChocolateSwiss.jpg","Chocolate Swiss Roll",70,80,90,"This Chocolate Swiss Roll is a rich, chocolaty and decadent dessert, a rewarding treat for  chocolate lovers. A chocolate sponge cake is filled with a chocolate mousse filling and drizzled with chocolate ganache on top. It is simply heavenly delicious."),
    CakeDataModel("assets/Cake/Mango.jpg","Mango CupCake",50,70,80,"These amazing cupcakes combine the flavors of mango and coconut for a tropical flair. The buttercream frosting is made with a fresh mango reduction for a superb taste of mango. The vanilla cupcake is moist, rich, and buttery with a hint of coconut."),
    CakeDataModel("assets/Cake/Strawberry.jpg","Strawberry CupCake",50,60,70,"These Strawberry Cupcakes are made with chunks of fresh strawberries in the cake batter and are topped with a luscious pink Strawberry Buttercream Frosting. These cupcakes are just bursting with flavor and would go down a treat at any celebration!"),
    CakeDataModel("assets/Cake/StrawberrySwiss.jpg","Strawberry Swiss Roll",70,85,95,"Roll into strawberry season with this gorgeous strawberry cake roll: a delicate almond sponge cake decorated with a cute strawberry design and filled with strawberry whipped cream. The Japanese are really on to something with these patterned cake rolls. They are as impressive to behold as they are delicious to eat, and are arguably much easier and less time-intensive than fancy frosted layer cakes."),
    CakeDataModel("assets/Cake/VanillaChocoChip.jpg","Vanilla Chocolate Chip CupCake",60,70,85,"A Vanilla Cupcake with chocochips on the top is heaven for chocolate lovers. These cakes are made with lots of love and care for  our Customers."),
  ];
  final List<IceCreamDataModel> icecreamdata = [
    IceCreamDataModel("assets/IceCream/chocolate.jpg","Chocolate Ice-Cream",30,40,50,"This chocolate ice cream is irresistibly creamy and made with two forms of chocolate for a deep rich flavor. It’s not overly sweet, and is just as delicious (maybe even more-so) than your favorite ice cream."),
    IceCreamDataModel("assets/IceCream/doublescoopchocolate.jpg","Double Chocolate Scoop",70,80,90,""),
    IceCreamDataModel("assets/IceCream/fruityscoop.jpg","Fruity Scoop",80,90,95,""),
    IceCreamDataModel("assets/IceCream/singlescoopchocolate.jpg","Single Chocolate Scoop",50,65,80,""),
    IceCreamDataModel("assets/IceCream/strawberry.jpg","Strawberry Ice-Cream",30,40,50,""),
    IceCreamDataModel("assets/IceCream/supersunday.jpg","Super Special Sunday",90,110,120,""),
    IceCreamDataModel("assets/IceCream/vanilla.jpg","Vanilla Ice-Cream",25,35,45,""),
    IceCreamDataModel("assets/IceCream/vanillascoop.jpg","Vanilla Scoop",75,90,100,""),
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
        child =  _listWidgetCake();
        break;
      case 2:
        child =  _listWidgetIceCream();
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
            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPageCoffee(
              title: coffeedata[index].title,
              img: coffeedata[index].image,
              pricesmall: coffeedata[index].pricesmall,
              pricemedium: coffeedata[index].pricemedium,
              pricelarge: coffeedata[index].pricelarge,
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
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _listWidgetIceCream() {
    return ListView.builder(
      itemCount: icecreamdata.length,
      itemBuilder: (BuildContext context,int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPageIceCream(
              title: icecreamdata[index].title,
              img: icecreamdata[index].image,
              pricesmall: icecreamdata[index].pricesmall,
              pricemedium: icecreamdata[index].pricemedium,
              pricelarge: icecreamdata[index].pricelarge,
              info: icecreamdata[index].information,
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
                        icecreamdata[index].image,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Text(
                        icecreamdata[index].title,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _listWidgetCake() {
    return ListView.builder(
      itemCount: cakedata.length,
      itemBuilder: (BuildContext context,int index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPageCake(
              title: cakedata[index].title,
              img: cakedata[index].image,
              pricesmall: cakedata[index].pricesmall,
              pricemedium: cakedata[index].pricemedium,
              pricelarge: cakedata[index].pricelarge,
              info: cakedata[index].information,
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
                        cakedata[index].image,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Text(
                        cakedata[index].title,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}