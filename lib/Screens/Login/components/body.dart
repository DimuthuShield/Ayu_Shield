import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/DigitCode/digit_screen.dart';
//import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
            SizedBox(height: size.height * 0.1),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            SizedBox(height: size.height * 0.1),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('The code word is ‘Rochambeau,’ dig me?'),
            Text('Rochambeau!',
                style: DefaultTextStyle.of(context)
                    .style
                    .apply(fontSizeFactor: 2.0)),
            SizedBox(height: size.height * 0.1),
            CountryCodePicker(
              initialSelection: 'LK',
              showCountryOnly: true,
            ),
            RoundedInputField(
              hintText: "Phone Number",
              onChanged: (value) {},
              keyboardType: TextInputType.phone,
            ),
            RoundedButton(
              text: "SUBMIT",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DigitScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
