import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kellton_flutter_training/Shopping%20Cart%20Getx%20Task/catalogproduct.dart';
class CatalogScreen
 extends StatelessWidget {
  const CatalogScreen
  ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: SafeArea(child: Column(
  children:
  [
const CatalogProducts(),
ElevatedButton(
  onPressed: ()=> Get.to(()=>CartScreen()),
   child: const Text('Go To Cart'))
  ]
))
,   
    );
  }
}