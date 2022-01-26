import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Producs.dart';
import 'package:e_commerce/screens/home/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //its provide us total hight and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(top: size.height * 0.12,
                  left: kDefaultPaddin,
                  right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Color"),
                          Row(
                            children: [
                              ColorDot(color: Colors.blue,isSelected: true,),
                              ColorDot(color: Colors.red,),
                              ColorDot(color: Colors.green,),
                          ],),
                        ],
                      ),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            style: TextStyle(color: kTextColor),
                            text: "Size",
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected ;
  const ColorDot({
    Key? key, required this.color,this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? color: Colors.transparent,),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
          color: color,

      ),),
    );
  }
}

