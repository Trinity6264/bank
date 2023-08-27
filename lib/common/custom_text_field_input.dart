import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

class CustomTextFieldInput extends StatelessWidget {
  const CustomTextFieldInput({
    required this.hintText,
    required this.onChnaged,
    this.errorText,
    this.textInputType = TextInputType.name,
    this.textInputAction = TextInputAction.next,
    super.key,
  });
  final String hintText;
  final String? errorText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final void Function(String value) onChnaged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Constants.getMediumPaddingSize(context),
      ),
      child: TextFormField(
        onChanged: onChnaged,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          hintText: hintText,
          errorText: errorText,
          hintStyle: TextStyle(
            color: const Color(0xff212121).withOpacity(0.6),
            fontWeight: FontWeight.w400,
            fontSize: Constants.getBodyFontSize(context),
            letterSpacing: 0.2,
          ),
          contentPadding: EdgeInsets.all(
            Constants.getMediumPaddingSize(context),
          ),
          fillColor: const Color(0xffF5F5F5),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Constants.getMediumRadiusSize(context),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Constants.getMediumRadiusSize(context),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Constants.getMediumRadiusSize(context),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Constants.getMediumRadiusSize(context),
            ),
          ),
        ),
      ),
    );
  }
}
