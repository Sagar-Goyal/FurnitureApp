import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  ProductImage({required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 0.15 * MediaQuery.of(context).size.height,
        ),
        Image(
          image: CachedNetworkImageProvider(imagePath, scale: 0.6),
        ),
      ],
    );
  }
}
