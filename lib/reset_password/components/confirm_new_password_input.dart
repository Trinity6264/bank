import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class ConfirmNewPasswordInput extends StatelessWidget {
  const ConfirmNewPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "Confirm New Password",
      onChnaged: (value) {},
    );
  }
}
