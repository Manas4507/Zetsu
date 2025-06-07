import 'package:flutter/material.dart';
import 'package:xoxo/widgets/custom_button.dart';

class MainMenuScreen  extends StatelessWidget {
  const MainMenuScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(onTap: (){}, text: "Create Room"),
          SizedBox(height: 14,),
          CustomButton(onTap: (){}, text: "Join Room")
        ],
      )
    );
  }
}