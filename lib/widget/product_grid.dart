import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product_model.dart';
import 'package:ecommerce_app/widget/products_item.dart';

class Product extends StatelessWidget{

  const Product({super.key});
  @override
  Widget build (BuildContext context){
    return GridView.builder(
      shrinkWrap:true,
     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
      itemCount:products.length,
      itemBuilder:(contex, index){
        final product = products[index];
        return ProductPage(product:product);
      },
      );
  }
}