import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_ecommerce_app/domain/entities/Category.dart';

class CategoryItemWidget extends StatelessWidget {
  Category category;

  CategoryItemWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: category.image ?? '',
          imageBuilder: (context, imageProvider) => Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: imageProvider)),
          ),
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
          width: 100,
          height: 100,
        ),
        Text(category.name ?? ''),
        Text(category.slug ?? ''),
      ],
    );
  }
}
