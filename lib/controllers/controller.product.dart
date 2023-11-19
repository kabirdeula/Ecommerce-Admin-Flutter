import 'dart:convert';

import 'package:ecommerce_admin/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_admin/models/model.product.dart';

Future<Product> createProduct(
    String name, String description, double price, int stock) async {
  final http.Response response = await http.post(
    Uri.parse(baseUrl + productEndpoint + storeEndpoint),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8'
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'description': description,
      'price': price.toString(),
      'stock': stock.toString(),
    }),
  );
  if (response.statusCode == 201) {
    return Product.fromMap(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create product.');
  }
}
