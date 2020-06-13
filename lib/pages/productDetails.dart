import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsNewPrice;
  final productDetailsOldPrice;
  final productDetailsPicture;

  ProductDetails({this.productDetailsName,
    this.productDetailsNewPrice,
    this.productDetailsOldPrice,
    this.productDetailsPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailsPicture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  title: new Text(widget.productDetailsName),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
