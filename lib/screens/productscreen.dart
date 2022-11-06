import 'package:flutter/material.dart';
import 'package:karostartup_project/components/bottom_button.dart';
import 'package:karostartup_project/components/description_box.dart';
import 'package:karostartup_project/components/color_list.dart';
import 'package:karostartup_project/components/product_image.dart';

import '../model/product.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({required this.product});

  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff015ba9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF1EFF2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'BACK',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18,
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF1EFF2),
                borderRadius: BorderRadiusDirectional.vertical(
                  bottom: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 7,
                    child: Center(
                      child: ProductImage(imagePath: product.imagePath),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ColorList(),
                  ),
                  Expanded(
                    flex: 3,
                    child: DescriptionBox(
                      price: product.price,
                      description: product.description,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: bottomButton(),
            ),
          ),
        ],
      ),
    );
  }
}
