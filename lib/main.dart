import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:trendingfashion/components/horizontal_listview.dart';
import 'package:trendingfashion/components/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/IMG_1266.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.3,
        backgroundColor: Colors.red,
        title: Text('Trending Fashion'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            //header
            new UserAccountsDrawerHeader(
                accountName: Text('Monil Shah'),
                accountEmail: Text('monil31199@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

            //BODY
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),


            Divider(),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help),
                ),
              ),

          ],
        ),
      ),

      //Body starts from here
      body: new ListView(
        children: <Widget>[

          //image slider
          image_carousel,

          new Padding(padding: const EdgeInsets.fromLTRB(8, 20, 8, 3),
            child: new Text('Categories'),),

          //horizontal Listview for Categories
          HorizontalList(),

          //Recent Products
          new Padding(padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
            child: new Text('Recent Products'),),

          //Grid View
          Container(
            height: 320,
            child: Products(),
          ),

        ],
      ),
    );
  }
}