import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Producs.dart';
import 'package:flutter/material.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? press;
  const ItemCard({
    required this.product,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image.toString()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              //products is out demo list
              product.title.toString(), style: TextStyle(color: kTextColor),
            ),
          ),
          Text("\$${product.price}",style: TextStyle(
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}