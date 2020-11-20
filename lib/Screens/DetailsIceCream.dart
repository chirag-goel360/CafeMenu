import 'package:flutter/material.dart';

class DetailPageIceCream extends StatefulWidget {
  final String img;
  final String title;
  final int pricesmall;
  final int pricemedium;
  final int pricelarge;
  final String info;
  const DetailPageIceCream({Key key, this.img, this.title, this.pricesmall, this.pricemedium, this.pricelarge, this.info,}) : super(key: key);

  @override
  _DetailPageIceCreamState createState() => _DetailPageIceCreamState();
}

class _DetailPageIceCreamState extends State<DetailPageIceCream> {
  int count = 0;
  int _selectedSize = 0;
  int priceofselected;

  @override
  void initState() {
    priceofselected = widget.pricesmall;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Column(
        children: <Widget>[
          _headerWidget(),
          _bodyWidget(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _headerWidget() {
    return SafeArea(
      child: Container(
        height: 250,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Image.asset(
                  widget.img,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyWidget() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            count -= 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "$count",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            count += 1;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "₹ : ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                priceofselected.toString(),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Size",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _selectSizeWidget(),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.info,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _selectSizeWidget() {
    return Row(
      children: <Widget>[
        InkWell(
          onTap: () {
            setState(() {
              _selectedSize = 0;
              priceofselected = widget.pricesmall;
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: _selectedSize == 0 ? Colors.red: Colors.transparent,
                  width: 4,
                ),
              ),
            ),
            child: Image.asset(
              widget.img,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _selectedSize = 1;
              priceofselected = widget.pricemedium;
            });
          },
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: _selectedSize == 1 ? Colors.red: Colors.transparent,
                  width: 4,
                ),
              ),
            ),
            child: Image.asset(
              widget.img,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            setState(() {
              _selectedSize = 2;
              priceofselected = widget.pricelarge;
            });
          },
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: _selectedSize == 2 ? Colors.red: Colors.transparent,
                  width: 4,
                ),
              ),
            ),
            child: Image.asset(
              widget.img,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}