import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/cartcontroller.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/productservice.dart';

class CatalogProducts extends StatelessWidget {
  const CatalogProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: Products.products.length,
        itemBuilder: (BuildContext context, int index) {
          return CatalogProductCard(index: index);
        },
      ),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final int index;
  final cartController = Get.put(CartController());
  CatalogProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
            Products.products[index].imageUrl,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(child: Text(Products.products[index].productName)),
        Expanded(child: Text('${Products.products[index].price}')),
        IconButton(
            onPressed: () {
              cartController.addProduct(Products.products[index]);
            },
            icon: const Icon(
              Icons.add_circle,
            ))
      ]),
    );
  }
}
