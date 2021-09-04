import 'package:flutter/material.dart';
import 'package:safe_space/Screens/SignUp/signup_screen.dart';
import 'package:safe_space/components/already_have_an_account_check.dart';
import 'package:safe_space/components/rounded_button.dart';
import 'package:safe_space/components/rounded_input_field.dart';
import 'package:safe_space/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  // const Body({
  //   Key key,
  // }) : super (key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN IN. Hi again!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.02),
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
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: kPrimaryColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: kPrimaryColor,
                ),
                hintText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            SizedBox(
              width: size.width * 0.10,
            ),
            SizedBox(
                height: size.height * 0.03,
                width: size.width * 0.12,
                child: Theme(
                  data:
                      ThemeData(unselectedWidgetColor: Colors.red // Your color
                          ),
                  child: Checkbox(
                    activeColor: kPrimaryColor,
                    value: false,
                    onChanged: null,
                  ),
                )),
            SizedBox(width: size.width * 0.002),
            Text("Remember Me",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ))
          ]),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "Sign In",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.13),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text("Or Sign In via",
                style: TextStyle(
                  color: Colors.black,
                )),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: kPrimaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.facebook,
                color: kPrimaryColor,
              ),
            ),
          ]),
        ],
      ),
    ));
  }
}
