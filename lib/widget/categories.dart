import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/category_model.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:100,
      child: ListView.separated(
        scrollDirection:Axis.horizontal,
        itemBuilder: (contex, index){
        return Column(
          children: [
            Container(
              height:60,
              width:60,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage(
                    categories[index].imagePath),
                    ),
                    ),
                    ),
                    Text(categories[index].title),
                    ],
                    );
        }, 
      separatorBuilder: (contex, index) => SizedBox(width:20), 
      itemCount: categories.length) ,
    );
  }
}