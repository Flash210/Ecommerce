


import 'package:ecomerce/api_service.dart';
import 'package:ecomerce/features/auth/controllers/sign_up_controller.dart';
import 'package:ecomerce/features/auth/models/product.dart';
import 'package:ecomerce/features/auth/screens/HomeScreen/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

      final controller = Get.put(SignUpController());
      final apiService = Get.put(ApiService());

    return  Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce App'),
      ),
      body: FutureBuilder(
        future: apiService.fetchProducts(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Products> products = snapshot.data as List<Products>;
              print('Received products: $products[0].title.toString()');

            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                      
                return ProductItem(product: products[index]);
              },
            );
          }
        },
      ),
    );
  }
}
