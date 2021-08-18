import 'package:flutter/material.dart';
import 'package:myshop/Data/productdata.dart';
import 'package:myshop/Screens/BottomNavScreen/ProductList/RightImageProductItemWidget.dart';
import 'ProductList/LeftImageProductItemWidget.dart';
import 'ProductList/TwoProductItemWidget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  get product => null;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RightImageProductItemWidget(
                screenHeight: screenHeight,
                product: iphone12promax,
              ),
              SizedBox(
                height: 10,
              ),
              LeftImageProductItemWidget(
                screenHeight: screenHeight,
                product: macbookpro,
              ),
              SizedBox(
                height: 10,
              ),
              TwoProductItemWidget(
                screenHeight: screenHeight,
                product1: airpodspro,
                product2: homepodmini,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
