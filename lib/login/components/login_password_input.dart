import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "Password",
      onChnaged: (value) {},
    );
  }
}
