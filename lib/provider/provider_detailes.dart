import 'package:flutter/material.dart';
import 'package:restaurant/provider/product.dart';

class details extends ChangeNotifier {
  var productdata;
  void product_Data(Product product) {
    productdata = product;
    notifyListeners();
  }

  Product get_data() {
    return productdata;
  }
}
