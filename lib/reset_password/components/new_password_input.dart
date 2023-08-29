import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class NewPasswordInput extends StatelessWidget {
  const NewPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "New Password",
      onChnaged: (value) {},
    );
  }
}
