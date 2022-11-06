import 'package:flutter/material.dart';
import 'package:karostartup_project/screens/productscreen.dart';
import 'package:karostartup_project/model/product.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCard extends StatelessWidget {
  ProductCard({required this.product});

  final Product product;
  final storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 40, bottom: 40),
      height: 150,
      width: double.infinity,
      child: GestureDetector(
        onTap: (() => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductScreen(
                  product: product,
                ),
              ),
            )),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.lightBlue,
                    offset: Offset(6, 0),
                  ),
                ],
              ),
              child: Align(
                alignment: const Alignment(-1, -0.5),
                child: SizedBox(
                  width: 120,
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-1, 1),
              child: Container(
                height: 35,
                width: 90,
                decoration: const BoxDecoration(
                  color: Color(0xffFBDAA0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: CachedNetworkImage(
                imageUrl: product.imagePath,
                placeholder: (context, url) => const CircularProgressIndicator(
                  color: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
