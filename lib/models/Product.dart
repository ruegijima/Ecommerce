import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/foundation.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Foundation for Light Skinned™",
    price: 25.99,
    description: description,
    rating: 4.6,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/kotex.png",
    ],
    colors: [
      Color.fromARGB(250, 204, 213, 181),
      Color.fromARGB(107, 161, 168, 133),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Sanitary Pads - Kotexv Long",
    price: 10.50,
    description: description,
    rating: 4.5,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/tampon.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Sanitary Tampon - Kotex ",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/facepowder.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Face Powder",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Like a foundation for a building, the right foundation for light skin sets the tone for a beautiful masterpiece. Embrace your complexion and let your radiance shine from within.…";
