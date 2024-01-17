


import 'package:ecomerce/api_service.dart';
import 'package:ecomerce/features/auth/controllers/sign_up_controller.dart';
import 'package:ecomerce/features/auth/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final apiService = Get.put(ApiService());

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce App'),
      ),
      body: FutureBuilder<List<Products>>(
        future: apiService.fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else
           if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No products available.'));
          } else {
            List<Products>? list = snapshot.data;

            return ListView.builder(
              itemCount: list?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(list?[index].title.toString() ?? 'No title'),
                  // Add more details or widgets based on your product model
                );
              },
            );
          }
        },
      ),
    );
  }
}
