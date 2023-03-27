import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/watch1.gif",
    title: "Classic",
bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/smart.jpg",
    title: "smart",
    bgColor: const Color(0xFFEEEEED),
  ),
  Product(
    image: "assets/images/sport.jpg",
    title: "sport",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/watch4.jpg",
    title: "Casual ",
    bgColor: const Color(0xFFEEEEED),
  ),
];