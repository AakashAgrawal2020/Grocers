import 'package:flutter/material.dart';

import './DairyProductList.dart';
import '../models/Product.dart';


class UserDairyProducts extends StatefulWidget {
  @override
  _UserDairyProductsState createState() => _UserDairyProductsState();
}

class _UserDairyProductsState extends State<UserDairyProducts> {
  final List<Product> _sellerProducts = [
    Product(
      productName: 'Yogurt',
      productId: '22897',
      productQuantity: "5",
      date: DateTime.now().toString(),
    )
  ];

  void _addNewProduct({String name, String id, String quantity}) {
    final newProduct = Product(
        productName: name,
        productId: id,
        productQuantity: quantity,
        date: DateTime.now().toString());

    setState(() {
      _sellerProducts.add(newProduct);
    });
  }

  @override
  Widget build(BuildContext context) {
    Navigator.pushNamed(context, '/NewDairyProduct', arguments: _addNewProduct);
    return DairyProductList(_sellerProducts);
  }
}
