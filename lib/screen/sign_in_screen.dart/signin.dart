import 'package:flutter/material.dart';
import 'package:ui_design/screen/loginscreen/login.dart';
import 'package:ui_design/screen/sign_in_screen.dart/widget/screen_container.dart';

class SignInPage extends StatefulWidget {
  SignInPage({
    super.key,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 43),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 67,
              ),
              ScreenContainer(
                controller: firstname,
                labelText: "Firstname",
                obscureText: false,
              ),
              SizedBox(
                height: 35,
              ),
              ScreenContainer(
                controller: lastname,
                labelText: "Lastname",
                obscureText: true,
              ),
              SizedBox(
                height: 35,
              ),
              ScreenContainer(
                controller: email,
                labelText: "E-mail",
                obscureText: false,
              ),
              SizedBox(
                height: 55,
              ),
              GestureDetector(
                onTap: () {
                  print("hello");
                },
                child: Container(
                  width: double.maxFinite,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xff4E55D7),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Text("Sign In"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Already have an account?"
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LogInPage(),));
                   
                  }, child:Text(
                    "Login"
                  ),
                   ),
                   
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/Vector.png')),
                  SizedBox(
                    width: 11,
                  ),
                  Text(
                    "Sign In With Google",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/images/Vector (1).png')),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    "Sign In With Apple",
                    style: TextStyle(
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              )
        
            ],
          ),
        ),
      ),
    );
  }
}

