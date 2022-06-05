
import 'package:get/get.dart';
import 'package:kellton_flutter_training/EvaluationDay2/product.dart';
import 'package:kellton_flutter_training/EvaluationDay2/productservice.dart';

class ShoppingController extends GetxController {
  List<Product> products = <Product>[].obs;
  @override
  void onInit() {
    super.onInit();
    getProductDetails();
  }

  void getProductDetails() async {
    products.assignAll(ProductService().getProducts().toList());
  }
}
