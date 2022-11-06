import 'package:flutter/material.dart';

Container bottomButton() {
  return Container(
    height: double.infinity,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 34, horizontal: 30),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xffFFBD1D),
      borderRadius: BorderRadius.circular(28),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
            label: const Text(
              'Chat',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const VerticalDivider(
          color: Colors.white,
          thickness: 2,
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            label: const Text(
              'Add to Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}
