import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';

class BrandItemWidget extends StatelessWidget {
  Brand brand;

  BrandItemWidget({required this.brand});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CachedNetworkImage(
            width: 80,
            height: 80,
            imageUrl: brand.image ?? '',
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
          ),
          Text(
            brand.name ?? '',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            brand.slug ?? '',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
