import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/components/rounded_TB.dart';
import 'package:flutter_auth/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              "What's Your Name?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29.0,
                  color: Colors.blueGrey.shade700),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/images/new1.png",
              height: size.height * 0.35,
            ),
            RoundedTB_User(
              hintText: "First Name",
              onChanged: (value) {},
            ),
            RoundedTB_User(
              hintText: "Last Name",
              onChanged: (value) {},
            ),
            RoundedTB_User(
              //? I dont understant why you are using a different input field in this page.
              //? I changed it to one in previous one
              hintText: "Age",
              onChanged: (value) {},
              keyboardType: TextInputType.number,
            ),
            RoundedButton(
              text: "Let's Get Started",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/google.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/facebook1.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
