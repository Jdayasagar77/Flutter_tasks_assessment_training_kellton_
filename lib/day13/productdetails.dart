// import 'dart:ui';
import 'productservice.dart';
import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/day13/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.productName} details'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: product.productId,
              child: Image.network(product.imageUrl),
            ),
          ),
          Card(
              elevation: 20,
              child: Column(
                children: [
                  Text(
                    'Product Id:${product.productId}',
                    style: const TextStyle(fontSize: 30.0),
                  ),
                  Text(
                    product.productName,
                    style:
                        const TextStyle(fontSize: 30.0, color: Colors.black38),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
