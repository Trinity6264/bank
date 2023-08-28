import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.popRoute();
      },
      child: Row(
        children: [
          const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xffffffff),
          ),
          Text(
            "Back",
            style: TextStyle(
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w500,
              fontSize: context.getGreetingsTextFontSize,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
