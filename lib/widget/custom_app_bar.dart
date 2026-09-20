import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children:[IconButton(onPressed:(){}, icon: Image.asset('assets/images/pic.jpg'))],
    );
  }
}