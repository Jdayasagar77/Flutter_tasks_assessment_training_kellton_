import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:kellton_flutter_training/day22/product.dart';
import 'package:kellton_flutter_training/day22/productservice.dart';

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
