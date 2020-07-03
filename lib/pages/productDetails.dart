import 'package:flutter/material.dart';
import 'package:trendingfashion/main.dart';

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
      title: InkWell(
        child: Text('ECom'),
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
        ),
      actions: <Widget>[
        new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {}),
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
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.productDetailsName, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("₹${widget.productDetailsOldPrice}", style: TextStyle(
                          color: Colors.black45,
                          decoration: TextDecoration.lineThrough
                        ),),
                      ),

                      Expanded(
                        child: new Text("₹${widget.productDetailsNewPrice}",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //===============First Row Buttons========================

          Row(
            children: <Widget>[
              //===============Size  Button========================
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("--Choose the Size--"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Close"),
                          ),
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size", style: TextStyle(fontSize: 12),),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              //===============Color  Button========================
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Color"),
                            content: new Text("--Choose the Color--"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color", style: TextStyle(fontSize: 12),),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              //===============Qty  Button========================
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("--Choose the Quantity--"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Quantity", style: TextStyle(fontSize: 12),),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          //===============Second Row Buttons========================

          Row(
            children: <Widget>[
              //===============Size  Button========================
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")
                ),
              ),
               new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border,),color: Colors.red, onPressed: (){})
            ],
          ),

          Divider(),
          //Product Description starts from here
          new ListTile(
            title: Text("Product Description\n",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5),child: (
                  Text(widget.productDetailsName)
              ),),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5),child: (
              Text("None")
              ),),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(padding: EdgeInsets.all(5),child: (
                  Text("None")
              ),),
            ],
          ),
        Divider(),

//      SimilarProducts
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),

        Container(
          height: 340,
          child: SimilarProducts(),
        ),


        ],
      ),
    );
  }
}


//similar products
class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
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
          return SimilarSingleprod(
            prodName: productList[index]['name'],
            prodPicture: productList[index]['picture'],
            prodOldPrice: productList[index]['oldPrice'],
            prodPrice: productList[index]['price'],
          );
        }
    );
  }
}

class SimilarSingleprod extends StatelessWidget {
  final  prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SimilarSingleprod({this.prodName,this.prodPicture,this.prodOldPrice,this.prodPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: new Text(prodName), child: Material(
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
              color: Colors.white,
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: new Text(prodName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                  new Text("₹$prodOldPrice ",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold,decoration: TextDecoration.lineThrough),),
                  new Text(" ₹$prodPrice",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            child: Image.asset(prodPicture,fit: BoxFit.cover,),
          ),
        ),
      ),
      ),
    );
  }
}
