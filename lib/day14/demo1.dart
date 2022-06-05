import 'package:flutter/material.dart';
 import 'package:kellton_flutter_training/day13/productservice.dart';
 import 'package:kellton_flutter_training/day13/product.dart';

import '../productdetails.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({ Key? key }) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  var products = ProductService().getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Products'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Hero(
              tag: products[index].productId,
              child: Image.network(products[index].imageUrl),
              ),
              title: Text(products[index].productName),
              trailing: const Icon(Icon.arrow_forward_ios_outlined),
              onTap: (){
                var product = products[index];
                Navigator.pushNamed(context, ProductDetailsScreen.routeName,
                arguments: product);
              },
          
            )
          ),
        }
        ),
        ),
    );
  }
}