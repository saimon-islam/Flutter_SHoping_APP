import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Producs.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage
      ({Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocraftic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title.toString(),
            style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin,),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin,),
              Expanded(
                child: Image.asset(
                  product.image.toString(),fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}