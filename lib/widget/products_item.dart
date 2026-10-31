import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product_model.dart';

class ProductPage extends StatelessWidget{
  const ProductPage({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context){
  return
  GestureDetector(
    onTap:(){Navigator.of(context).push(MaterialPageRoute(builder:(context)=>))},
  child:Stack(
    children:[
      Container(
        width:double.infinity,
        decoration:BoxDecoration(borderRadius:BorderRadius.circular(20), color:Colors.grey,),
        child:
        Column(
          children:[
        Image.asset(product.image, width:130, height:25, fit:BoxFit.cover,),
        Text(product.title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),),
        Row(children:[
          Text('\$${product.price}'),
       Row(
        children:
        List.generate(product.colors.length,(index)=>Container(decoration:BoxDecoration(color:product.colors[index], shape:BoxShape.circle,) width:20, height:20,)))
        ]),
        ],),
        ),
      ],
  ));
  }
}