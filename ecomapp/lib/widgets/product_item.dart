import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String id;
  final Color iconColor;
  ProductItem(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        title: Text(title, textAlign: TextAlign.center),
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite, color: iconColor),
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
