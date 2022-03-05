import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final double price;
  final List<String> images;

  Product({
    required this.images,
    required this.title,
    required this.description,
    required this.price,
  });
}

List<Product> products = [
  Product(images: ["assets/images/sticker_haskell.jpg"],
      title: "Sticker Fun is Fun",
      description: "Fun is where Haskell is",
      price: 2),
  Product(images: ["assets/images/sticker_share.jpg"],
      title: "Sticker Share it all",
      description: "description TODO",
      price: 2),
  Product(images: ["assets/images/sticker_smiley.jpg"],
      title: "Sticker Smile :)",
      description: "Sticker for a big smile",
      price: 2),
  Product(images: ["assets/images/sweat_smiley.jpg"],
      title: "Sweat Smile",
      description: "Sweat to smile everyday to everybody",
      price: 23.99),
  Product(images: ["assets/images/shirt_haskell.jpg"],
      title: "Shirt Haskell",
      description: "Shirt haskell",
      price: 12),
];
