import 'package:flutter/material.dart';
import 'package:ecommerce_app/widget/custom_app_Bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
         children:[
          CustomAppBar()
         ],
        ),
      ),
    );
  }
}