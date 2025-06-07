import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key,required this.onTap,required this.text});


  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(195, 109, 135, 216),
            blurRadius: 5,
            spreadRadius: 0
          )
        ]
      ),
      child: SizedBox(
        width: width,
        height: 60,
        child: ElevatedButton(
          onPressed:onTap,
          
          style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromRGBO(207, 210, 227, 1),
            backgroundColor: Color.fromARGB(195, 109, 135, 216),
            shape: ContinuousRectangleBorder(side: BorderSide.none)
          ),
          child: Text(text,style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w500,),),
          ),
      ),
    );
    
  }
}