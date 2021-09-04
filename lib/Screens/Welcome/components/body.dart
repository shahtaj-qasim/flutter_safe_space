import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safe_space/Screens/Login/login_screen.dart';
import 'package:safe_space/Screens/SignUp/signup_screen.dart';
import 'package:safe_space/components/rounded_button.dart';
import 'package:safe_space/constants.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size; //This size provides us total height and width of our screen
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Image.asset(
              "assets/images/main-logo.png",
              height: size.height * 0.4,
              ),
              RoundedButton(
                text: "LOGIN",
                press: (){Navigator.push(context, MaterialPageRoute(
                builder: (context){return LoginScreen();},),
                );}
              ),
              SizedBox(height: size.height *0.03),
               RoundedButton(
                text: "SIGN UP",
                press: (){Navigator.push(context, MaterialPageRoute(
                builder: (context){return SignUpScreen();},),
                );},
                color:kPrimaryLightColor,
              ),
              SizedBox(height: size.height *0.08),
            ],
        ),
      ),
    );
  }
}
