import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var ProductCart = [
  {
  "name": "Blazer",
  "picture": "images/products/blazer1.jpeg",
  "oldPrice" : 120,
  "price": 85,
    "size" : "M",
    "color" : "Black",
    "qty" : 4
  },
  {
  "name": "Blazer Demo",
  "picture": "images/products/blazer2.jpeg",
  "oldPrice" : 120,
  "price": 85,
    "size" : "XL",
    "color" : "Black",
    "qty" : 2
  },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: ProductCart.length,
        itemBuilder: (context,index){
         return SingleCartProducts(
           CartProdName: ProductCart[index]["name"],
           CartProdPicture: ProductCart[index]["picture"],
           CartProdOldPrice: ProductCart[index]["oldPrice"],
           CartProdPrice: ProductCart[index]["price"],
           CartProdSize: ProductCart[index]["size"],
           CartProdColor: ProductCart[index]["color"],
           CartProdQty: ProductCart[index]["qty"],
         );
        });
  }
}
 class SingleCartProducts extends StatelessWidget {
   final CartProdName;
   final CartProdPicture;
   final CartProdOldPrice;
   final CartProdPrice;
   final CartProdSize;
   final CartProdColor;
   final CartProdQty;
   SingleCartProducts(
       {
         this.CartProdName,
         this.CartProdPicture,
         this.CartProdOldPrice,
         this.CartProdPrice,
         this.CartProdSize,
         this.CartProdColor,
         this.CartProdQty
       });
   @override
   Widget build(BuildContext context) {
     return Card(
       child: ListTile(
         leading: new Image.asset('$CartProdPicture',),
         title: new Text('$CartProdName',
         style: TextStyle(fontWeight: FontWeight.bold),),
         subtitle: Column(
             children: <Widget>[
               new Row(
             children: <Widget>[

//             Size Starting From Here
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: new Text("Size :",
                 style: TextStyle(color: Colors.black),),
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text('$CartProdSize',
                   style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red),),
               ),


//             Color Starting From Here
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                 child: new Text("\tColor :",
                   style: TextStyle(color: Colors.black),),
               ),
               Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: new Text('$CartProdColor',
                     style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red),),
               ),
             ],
           ),


//               Price Starts from here
             new Container(
               alignment: Alignment.topRight,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: new Text('₹$CartProdPrice',
                 style: TextStyle(fontStyle: FontStyle.italic,color: Colors.red,fontSize: 20),),
               ),
             )
         ],
         ),


//          ADD QUANTITY from 22nd tut 49.12 Seconds
//         trailing:
       ),
     );
   }
 }
 