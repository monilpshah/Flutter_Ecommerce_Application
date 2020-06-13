import 'package:flutter/material.dart';
import 'package:trendingfashion/pages/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice" : 120,
      "price": 85,
    },
    {
      "name": "Blazer Demo",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice" : 120,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice" : 120,
      "price": 85,
    },
    {
      "name": "Dress Demo",
      "picture": "images/products/dress2.jpeg",
      "oldPrice" : 120,
      "price": 85,
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prodName: productList[index]['name'],
          prodPicture: productList[index]['picture'],
          prodOldPrice: productList[index]['oldPrice'],
          prodPrice: productList[index]['price'],
        );
        }
    );
  }
}


class Single_prod extends StatelessWidget {
  final  prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  Single_prod({this.prodName,this.prodPicture,this.prodOldPrice,this.prodPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prodName, child: Material(
        child: InkWell(
          onTap: ()=> Navigator.of(context).push(

            //calling constructor of productDetails

              new MaterialPageRoute(builder: (context) => new ProductDetails(
                productDetailsName: prodName,
                productDetailsNewPrice: prodPrice,
                productDetailsOldPrice: prodOldPrice,
                productDetailsPicture: prodPicture,))),
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(prodName, style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),

              title: Text("₹$prodPrice", style: TextStyle(
                color: Colors.red,fontWeight: FontWeight.bold
              ),),

              subtitle: Text("₹$prodOldPrice", style: TextStyle(
                  color: Colors.black54,fontWeight: FontWeight.bold,
                  decoration:TextDecoration.lineThrough,
              ),),
            ),
          ),
          child: Image.asset(prodPicture,fit: BoxFit.cover,),
          ),
        ),
      ),),
    );
  }
}
