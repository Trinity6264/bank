import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class OldPasswordInput extends StatelessWidget {
  const OldPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "Old Password",
      onChnaged: (value) {},
    );
  }
}
