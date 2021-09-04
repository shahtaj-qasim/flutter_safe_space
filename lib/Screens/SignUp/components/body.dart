import 'package:flutter/material.dart';
import 'package:safe_space/Screens/Login/login_screen.dart';
import 'package:safe_space/components/already_have_an_account_check.dart';
import 'package:safe_space/components/rounded_button.dart';
import 'package:safe_space/components/rounded_input_field.dart';
import 'package:safe_space/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Safe Space",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new SizedBox(
                  width: size.width * 0.4,
                  child: RoundedInputField(
                    child: TextField(
                      decoration: InputDecoration(
                         icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                        hintText: "Firstname",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.01),
                new SizedBox(
                  width: size.width * 0.4,
                  child: RoundedInputField(
                    child: TextField(
                      decoration: InputDecoration(
                         icon: Icon(
                  Icons.person,  //supervised_user_circle- use this for user icon
                  color: kPrimaryColor,
                ),
                        hintText: "Lastname",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RoundedInputField(
              child: TextField(
                decoration: InputDecoration(
                   icon: Icon(
                  Icons.email,
                  color: kPrimaryColor,
                ),
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            RoundedInputField(
              child: TextField(
                decoration: InputDecoration(
                   icon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            RoundedInputField(
              child: TextField(
                decoration: InputDecoration(
                   icon: Icon(
                  Icons.phone,
                  color: kPrimaryColor,
                ),
                  hintText: "Phone number",
                  border: InputBorder.none,
                ),
              ),
            ),
            RoundedButton(
              text: "SIGN UP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
