import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_design/screen/profile_screen/profile_page.dart';
import 'package:ui_design/screen/navigationscreen/navigation_page.dart';
import 'package:ui_design/screen/sign_in_screen.dart/signin.dart';
import 'package:ui_design/screen/sign_in_screen.dart/widget/screen_container.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 153,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 79,
            ),
            ScreenContainer(
                controller: firstname,
                labelText: "Username",
                obscureText: false),
            SizedBox(
              height: 35,
            ),
            ScreenContainer(
              controller: password,
              labelText: "Password",
              obscureText: true,
              suffixIcon: Icon(Icons.visibility_off),
              
            ),
            SizedBox(
              height: 106,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationPage(),));
              },
              child: Container(
                width: double.maxFinite,
                height: 46,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xff4E55D7),
                    borderRadius: BorderRadius.circular(15)),
                child: Text("Log In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
