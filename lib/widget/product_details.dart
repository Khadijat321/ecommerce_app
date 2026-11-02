import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                  Spacer(),
                  IconButton(onPressed: (){}, icon:Icon(Icons.share)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border_outlined)),
                  ],
                  ),
                  ],
                  ),
        ),
      ),
    );
  }
}