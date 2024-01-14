
import 'package:ecomerce/features/auth/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Products product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text( product.title.toString()),
        subtitle: Text(product.price.toString()),
        trailing: Text('\$${product.price.toString()}'),
      ),
    );
  }
}