import 'package:dio/dio.dart';
import 'package:ecomerce/constants/text_strings.dart';
import 'package:ecomerce/features/auth/models/product.dart';

class ApiService {
  static const String apiUrl = 'products/';

  late Dio dio;

  ApiService() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<Products>> fetchProducts() async {
    try {
      Response response = await dio.get(apiUrl);
      var data = response.data;

      List<Products> listOfProducts = [];

      if (response.statusCode == 200) {
        for (var i in data) {
          listOfProducts.add(Products.fromJson(i));
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