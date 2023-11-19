import 'package:ecommerce_admin/screens/product/screen.create_product.dart';
import 'package:ecommerce_admin/styles/button_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daraz Lite Admin'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const CreateProduct();
                },
              ),
            );
          },
          style: CustomButtonStyle.buttonStyle,
          icon: const Icon(Icons.add),
          label: const Text('Create Product'),
        ),
      ),
    );
  }
}
