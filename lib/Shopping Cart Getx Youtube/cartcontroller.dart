import 'package:get/get.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/productservice.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  void addProduct(Products products) {
    if (_products.containsKey(products)) {
      _products[products] += 1;
    } else {
      _products[products] = 1;
    }
    Get.snackbar(
      "Product added",
      "You have added the ${products.productName}",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }

  get productss => _products;

  void removeProduct(Products products) {
    if (_products.containsKey(products) && _products[products] == 1) {
      _products.removeWhere((key, value) => key == products);
    } else {
      _products[products] -= 1;
    }
  }

  get producctSubtotal => _products.entries
      .map((products) => products.key.price * products.value)
      .toList();
  get total => _products.entries
      .map((products) => products.key.price * products.value)
      .toList()
      .reduce((value, element) => value + element)
      .toString(2);
}
