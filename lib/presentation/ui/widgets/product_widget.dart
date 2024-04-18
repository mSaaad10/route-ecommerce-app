import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';

class ProductWidget extends StatelessWidget {
  Product product;

  ProductWidget({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: BorderSide(width: 2, color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: product.imageCover ?? '',
              imageBuilder: (context, imageProvider) => Container(
                width: 191,
                height: 128,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.fill)),
              ),
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              width: 100,
              height: 100,
            ),
            Text(product.title ?? ''),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.priceAfterDiscount?.toString() ??
                      product.price.toString()),
                  SizedBox(
                    width: 4,
                  ),
                  Visibility(
                      visible: product.priceAfterDiscount != null,
                      child: Text(
                        product.price.toString(),
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Reviews (${product.ratingsAverage.toString()})'),
                  Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 18,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
