import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});

  
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          // aspectRatio: 2.6 / 4,
          aspectRatio:1.74/2.7,
          child: CachedNetworkImage(
      
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => Image.network(
            errImage,
            fit: BoxFit.fill,
          ),
          ),
        ),
      ),
    );
  }
}
