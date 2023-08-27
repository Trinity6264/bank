import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(
          Constants.getMediumPaddingSize(context),
        ),
        backgroundColor: Constants.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Constants.getMediumRadiusSize(context),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: const Color(0xff212121),
          fontWeight: FontWeight.w700,
          letterSpacing: 0.2,
          fontSize: Constants.getBodyFontSize(context),
        ),
      ),
    );
  }
}
