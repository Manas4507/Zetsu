import 'package:xoxo/responsiveness/responsive.dart';
import 'package:xoxo/widgets/custom_button.dart';
import 'package:xoxo/widgets/custom_text.dart';
import 'package:xoxo/widgets/custom_text.dart';
import 'package:xoxo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName ='/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _gameIdController =TextEditingController();
  final TextEditingController _nameController =TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(shadows: [Shadow(blurRadius: 35,color: Colors.blue)], text: 'Join   Room', fontSize: 70),
              SizedBox(height: size.height*0.08,),
              CustomTextfield(controller: _nameController, hintText: 'Enter your nickname'),
              const SizedBox(height: 20,),
              CustomTextfield(controller: _gameIdController, hintText: 'Enter gameId'),
              SizedBox(height: size.height * 0.035),
              CustomButton(onTap: (){}, text: 'Join')
            ],
          ),
        ),
      ),
    );
  }
}