import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/DealsModels.dart';

class ProductService {
  Future<Product?> getProduct() async {
    var uri = Uri.parse('https://dummyjson.com/products');
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return Product.fromJson(jsonDecode(json));
    } else {
      return null;
    }
  }
}
