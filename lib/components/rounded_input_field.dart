import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  //! This one is added to detects the keyboard type. Check TextInputType class properties
  final TextInputType keyboardType;
  const RoundedInputField(
      {Key key,
      this.hintText,
      this.icon = Icons.phone_android,
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
