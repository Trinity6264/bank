import 'package:bank/common/custom_text_field_input.dart';
import 'package:flutter/material.dart';

class ConfirmedPasswordInput extends StatelessWidget {
  const ConfirmedPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldInput(
      hintText: "Confirm New Password",
      onChnaged: (value) {},
    );
  }
}
