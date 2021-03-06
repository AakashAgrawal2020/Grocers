import 'package:flutter/material.dart';

class NewDairyProduct extends StatelessWidget {
  final Function _addNewProduct;
  final productNameController = TextEditingController();
  final productIdController = TextEditingController();
  final productQuantityController = TextEditingController();

  NewDairyProduct(this._addNewProduct);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AlertDialog(
          contentPadding: EdgeInsets.all(20),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          elevation: 5,
          title: Center(
            child: Text(
              "Add Product Details",
              style: TextStyle(color: Colors.lightGreenAccent[700]),
            ),
          ),
          content: new Container(
            child: Column(
              children: <Widget>[
                new TextField(
                  controller: productNameController,
                  cursorColor: Colors.lightGreenAccent[700],
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                    ),
                    icon: const Icon(
                      Icons.store,
                      color: Colors.lightGreen,
                    ),
                    labelText: 'Product Name',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                new TextField(
                  controller: productIdController,
                  cursorColor: Colors.lightGreenAccent[700],
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                    ),
                    icon: const Icon(
                      Icons.store,
                      color: Colors.lightGreen,
                    ),
                    labelText: 'Product Id',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                new TextField(
                  controller: productQuantityController,
                  cursorColor: Colors.lightGreenAccent[700],
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightGreen,
                        width: 2,
                      ),
                    ),
                    icon: const Icon(
                      Icons.store,
                      color: Colors.lightGreen,
                    ),
                    labelText: 'Product Quantity',
                    labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                bottom: 15.0,
              ),
              child: RaisedButton(
                onPressed: () {
                  _addNewProduct(
                    productNameController.text,
                    productIdController.text,
                    productQuantityController.text,
                  );
                  Navigator.of(context).pop();
                },
                color: Colors.lightGreenAccent[700],
                child: Text(
                  "Add Product",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
