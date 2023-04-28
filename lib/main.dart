import 'package:flutter/material.dart';
import 'package:ui_design/screen/product_screen/product_page.dart';
import 'package:ui_design/screen/profile_screen/profile_page.dart';
import 'package:ui_design/screen/navigationscreen/navigation_page.dart';
import 'package:ui_design/screen/homescreen/home_page.dart';
import 'package:ui_design/screen/sign_in_screen.dart/signin.dart';

void main(){
  runApp(userinterface());
}
class userinterface extends StatelessWidget {
  const userinterface({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SignInPage(),
    );
  }
}