import 'package:ecommerce_app/widget/categories.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/widget/custom_app_Bar.dart';
// import 'package:ecommerce_app/core/colors.dart';
import 'package:ecommerce_app/widget/search_bar.dart';
import 'package:ecommerce_app/widget/image_slider.dart';
import 'package:ecommerce_app/widget/product_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 30),
                CustomSearchBar(),
                ImageSlider(currentSlide: currentIndex, onchange: (value) {
                  setState(() {
                   currentIndex = value;
                  });
                },), SizedBox(height:20),
                Categories(),
                SizedBox(height:10,),
                Row(
                  children:[
                   Text('NEW ARRIVALS', style:TextStyle(fontSize:15, fontWeight:FontWeight.w600,)),
                   Spacer(),
                   TextButton(onPressed:(){}, child: Text('see all', style:TextStyle(fontSize:12,),),)
                ],),
                SizedBox(height:20),
                Product(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
