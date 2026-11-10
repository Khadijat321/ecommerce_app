import 'package:flutter/material.dart';
import 'packge:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/models/product_model.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.product});
  final ProductModel product;


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon:Icon(Icons.arrow_back)),
                  Spacer(),
                  IconButton(onPressed: (){}, icon:Icon(Icons.share)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined)),
                  ],
                  ),
                  SizedBox(height:20,),
                  Image.asset(product.image),
                  SizedBox(height:20,),
                  Text(product.title, style:GoogleFonts.mukta(
                    fontweight:FontWeight.w700, fontSize:18,
                  ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("\$${product.price}", style:GoogleFonts.mukta(fontSize:16, fontWeight:FontWeight.w700,
                          ),
                          ), 
                          Row(
                            children: [
                              Container( 
                                padding: EdgeInsets.all(5),
                                decoration:BoxDecoration(
                                  color:myColors.kprimaryColor,
                                borderRadius: BorderRadius.circular(10)
                                ),
                                child:Row(
                                  children:[
                                  Icon(Icons.star, color:Colors.white,),
                                  Text(product.rate.toString()),
                                  ],
                                ),
                                ),
                            ],
                          )
                      ],
                      ),
                    ],
                    ),
                  ],
                  ),
        ),
      ),
    );
  }
}