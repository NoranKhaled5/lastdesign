import 'package:design2/Screen/productcard.dart';
import 'package:design2/model/sectiontitle.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import 'Product.dart';

class NewArrivalProducts extends StatelessWidget {
  const NewArrivalProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Watches",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  bgColor: demo_product[index].bgColor,
                  //press: () {
             //       Navigator.push(
               //         context,
                 //       MaterialPageRoute(
                   //     builder: (context) =>
                      //        DetailsScreen(product: demo_product[index]),
                        //));
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child:ProductCard(
                    title: demo_product[index].title,
                    image: demo_product[index].image,
                    bgColor: demo_product[index].bgColor,
                    //press: () {},
                  ),

                )
            ),
          ),
        ),
      ],
    );
  }
}