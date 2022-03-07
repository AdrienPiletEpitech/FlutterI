import 'package:flutter/material.dart';
import '../../../models/products.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.product,required this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        margin: const EdgeInsets.all(10),
        shadowColor: Colors.blueGrey,
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(product.images[0]), // no matter how big it is, it won't overflow
          ),
          title: Text(product.title),
          subtitle:  Text("\$${product.price}"),
          trailing: IconButton(icon: Icon(
            Icons.delete,
            size: 20.0,
            color: Colors.brown[900],
          ),
            onPressed: () {
              print("added to card");
            },),
        ),
      ),
    );
  }
}