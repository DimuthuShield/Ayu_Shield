import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

//This is the parent class for two type of Rounded Textboxes.
/// Common rouned textbox
class RoundedTB extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  //! This one is added to detect the keyboard type. Check TextInputType class properties
  final TextInputType keyboardType;
  const RoundedTB(
      {Key key,
      this.hintText,
      this.icon,
      this.onChanged,
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        keyboardType: this.keyboardType,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xFF00E676),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

//This class has its own icon and all other features are inherited from Rounded Textbox main class
/// Rounded textbox with phone icon
// ignore: camel_case_types
class RoundedTB_Phone extends RoundedTB {
  const RoundedTB_Phone(
      {Key key,
      String hintText,
      ValueChanged<String> onChanged,
      TextInputType keyboardType = TextInputType.text})
      : super(
            key: key,
            hintText: hintText,
            icon: Icons.phone_android, //Define custom icon type for this class
            onChanged: onChanged,
            keyboardType: keyboardType);
}

//This class has its own icon and all other features are inherited from Rounded Textbox main class
/// Rounded textbox with user icon
// ignore: camel_case_types
class RoundedTB_User extends RoundedTB {
  const RoundedTB_User(
      {Key key,
      String hintText,
      ValueChanged<String> onChanged,
      TextInputType keyboardType = TextInputType.text})
      : super(
            key: key,
            hintText: hintText,
            icon: Icons.person, //Define custom icon type for this class
            onChanged: onChanged,
            keyboardType: keyboardType);
}
