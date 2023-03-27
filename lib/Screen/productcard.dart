import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../constant/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                  ),
                  child: Image.asset(
                    image,
                    height: 132,
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: defaultPadding / 4),

                  ],
                )
              ],
            ),
            Positioned(
                right: 0.0,
                child:  CircleAvatar(
                  backgroundColor: Colors.white,
                  child: LikeButton(
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite,
                        color: isLiked ? Colors.red.shade900 : Colors.grey,
                      );
                    },
                  ),
                ), ),
               Positioned(
                   bottom:0,
                   right: 2,
                   height: 25,
                   width: 80,
                   child: ElevatedButton(
                   style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>( const Color(0xff385ecb)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                onPressed: () {},
                   child: const Text('Try On',
                    style:TextStyle(color: Colors.white,
                    )
                ))
               )
                 ],
        ),
      ),
    );
  }
}