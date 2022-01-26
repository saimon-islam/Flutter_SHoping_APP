import 'package:e_commerce/models/Producs.dart';
import 'package:e_commerce/screens/details/details_screens.dart';
import 'package:e_commerce/screens/home/components/categories.dart';
import 'package:e_commerce/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPaddin), //padding
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddin,
                crossAxisSpacing: kDefaultPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// class ItemCard extends StatelessWidget {
//   final Product product;
//   final Function()? press;
//   const ItemCard({
//     required this.product,
//     this.press,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.all(kDefaultPaddin),
//             // height: 180,
//             // width: 160,
//             decoration: BoxDecoration(
//               color: product.color,
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Image.asset(product.image.toString()),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
//           child: Text(
//             //products is out demo list
//             product.title.toString(), style: TextStyle(color: kTextColor),
//           ),
//         ),
//         Text("\$${product.price}",style: TextStyle(
//           fontWeight: FontWeight.bold,
//         ),)
//       ],
//     );
//   }
// }
