import 'package:flutter/material.dart';
import 'package:kellton_flutter_training/day23/product.dart';

class UserCart with ChangeNotifier {
  final List<Product> _products = [];
  List<Product> get products => _products;

  void addProductToCart(Product product) {
    _products.add(product);
    debugPrint('Adding Product : ${product.productName}');
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }

  double get totalPrice =>
      products.fold(0, (total, currentProduct) => total + currentProduct.price);
}
