import 'package:flutter/material.dart';

import './DairyProductList.dart';
import '../models/Product.dart';

class UserDairyProducts extends StatefulWidget {
  @override
  _UserDairyProductsState createState() => _UserDairyProductsState();
}

class _UserDairyProductsState extends State<UserDairyProducts> {
  Product pd;
  final List<Product> _sellerProducts = [
    Product(
      productName: 'Yogurt',
      productId: '22897',
      productQuantity: "5",
      date: DateTime.now().toString(),
    )
  ];

  void _addNewTransaction() {
    RouteSettings settings = ModalRoute.of(context).settings;
    pd = settings.arguments;
    final newPd = Product(
        productName: this.pd.productName,
        productId: this.pd.productId,
        productQuantity: this.pd.productQuantity,
        date: DateTime.now().toString());

    setState(() {
      _sellerProducts.add(newPd);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DairyProductList(_sellerProducts);
  }
}
