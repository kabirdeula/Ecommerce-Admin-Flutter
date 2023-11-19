// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:ecommerce_admin/controllers/controller.product.dart';
import 'package:ecommerce_admin/styles/button_style.dart';
import 'package:ecommerce_admin/widgets/widget.text_field.dart';
import 'package:flutter/material.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    final TextEditingController priceController = TextEditingController();
    final TextEditingController stockController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Product'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textField('Name', nameController, TextInputType.text),
            textField('Description', descriptionController, TextInputType.text),
            textField('Price', priceController, TextInputType.number),
            textField('Stock', stockController, TextInputType.number),
            ElevatedButton(
              onPressed: () async {
                try {
                  await createProduct(
                    nameController.text,
                    descriptionController.text,
                    double.parse(priceController.text),
                    int.parse(stockController.text),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Product created successfully'),
                    ),
                  );
                } catch (error) {
                  print('Error creating product: $error');
                }
              },
              style: CustomButtonStyle.buttonStyle,
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
