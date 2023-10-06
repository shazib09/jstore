import 'package:flutter/material.dart';
import '../models/models.dart';
import 'widgets.dart';

class ProductCarsouel extends StatelessWidget {
  final List<Product> products;
  const ProductCarsouel({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: products.length,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10 ),

        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(right : 8.0),
            child: ProductCard(products: products[index]),
          );
        }),
    );
  }
}

