import 'package:flutter/foundation.dart';

class Product {
  final String productName;
  final String productId;
  final int productQuantity;
  final String date;

  Product({
    @required this.productName,
    @required this.productId,
    @required this.productQuantity,
    @required this.date,
  });
}