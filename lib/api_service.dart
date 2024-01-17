import 'dart:convert';
import 'package:ecomerce/features/auth/models/product.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://dummyjson.com/products';
Future<List<Products>> fetchProducts() async {
  try {
    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<Products> listOfProducts = [];

      var body = json.decode(response.body);

      if (body is List) {
        // If the response is a list, iterate over it
        for (var i in body) {
          listOfProducts.add(Products.fromJson(i));
        }
      } else if (body is Map && body.containsKey('images')) {
        // If the response is a map and contains 'images', extract and iterate over it
        var images = body['images'];
        if (images is List) {
          for (var i in images) {
            listOfProducts.add(Products.fromJson(i));
          }
        }
      }

      return listOfProducts;
    } else {
      throw Exception('Failed to load products. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    return [];
  }
}
}