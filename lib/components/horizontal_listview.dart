import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categories(
            image_location: 'images/cats/tshirt.png',
            image_caption: 'T-Shirt '
          ),
          Categories(
              image_location: 'images/cats/accessories.png',
              image_caption: 'Accessories'
          ),
          Categories(
              image_location: 'images/cats/dress.png',
              image_caption: 'Dress'
          ),
          Categories(
              image_location: 'images/cats/formal.png',
              image_caption: 'Formal'
          ),
          Categories(
              image_location: 'images/cats/informal.png',
              image_caption: 'Informal'
          ),
          Categories(
              image_location: 'images/cats/shoe.png',
              image_caption: 'Shoes'
          ),
          Categories(
              image_location: 'images/cats/jeans.png',
              image_caption: 'Jeans'
          )

          
        ],
      ),
    );
  }
}
class Categories extends StatelessWidget {
   final String image_location;
   final String image_caption;

    Categories({this.image_location,this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 100,
        child: ListTile(
          title: Image.asset(image_location,width: 100.0,height: 80.0,),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,style: TextStyle(fontSize: 10,color: Colors.black),),
          ),
        ),
      ),
    ),
    );
  }
}

