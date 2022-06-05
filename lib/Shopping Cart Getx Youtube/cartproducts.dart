import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/cartcontroller.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/productservice.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();
  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
  SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: controller.productss.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                product1: controller.productss,
                quantity: controller.productss,
                index: index,
              );
            }),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Products product1;
  final int quantity;
  final int index;
  const CartProductCard(
      {Key? key,
      required this.controller,
      required this.product1,
      required this.quantity,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                product1.imageUrl,
              ),
            ),
            SizedBox(width: 20),
            Expanded(child: Text(product1.productName)),
            IconButton(
                onPressed: () {
                  controller.removeProduct(product1);
                },
                icon: Icon(Icons.remove_circle)),
            Text('${quantity}'),
            IconButton(onPressed: () {
                controller.addProduct(product1);
            }, icon: Icon(Icons.add_circle)),
          ],
        ));
  }
}
