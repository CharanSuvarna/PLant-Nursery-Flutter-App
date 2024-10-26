import 'package:flutter/material.dart';
import 'package:green_saplings/constants.dart';

class CustomTextfield extends StatelessWidget {
  //set the passed final parameter to the widgets
  final IconData icon;
  final bool obscureText;
  final String hintText;

  const CustomTextfield({
    super.key, required this.icon, required this.obscureText, required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style:TextStyle(
        color:Constants.blackColor,
    
      ),
      decoration: InputDecoration(
        //Removing the border
        border: InputBorder.none,
        //Adding a prefix icon
        prefixIcon: Icon(icon, color: Constants.blackColor.withOpacity(.3),),
        hintText: hintText,
    
      ),
      cursorColor: Constants.blackColor.withOpacity(.5),
    );
  }
}