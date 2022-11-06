import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  DescriptionBox({required this.description, required this.price});

  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Classic Arm Leather Chair',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 10),
        Text(
          '\$$price',
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xffFFA41B)),
        ),
        const SizedBox(height: 10),
        Text(description),
      ],
    );
  }
}
