import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class LoginEmailInput extends StatelessWidget {
  const LoginEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "Email",
      onChnaged: (value) {},
    );
  }
}
