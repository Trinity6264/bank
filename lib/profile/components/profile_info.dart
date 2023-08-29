import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

typedef AccountInfoParams = ({String title, String name});

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    required this.accountInfoParams,
    super.key,
  });
  final AccountInfoParams accountInfoParams;

  @override
  Widget build(BuildContext context) {
    final (:title,:name) = accountInfoParams;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color(0xff022E64).withOpacity(0.8),
            fontWeight: FontWeight.w600,
            fontSize: 10,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: const Color(0xff022E64).withOpacity(0.8),
            fontWeight: FontWeight.w400,
            fontSize: context.getBodyFontSize(),
          ),
        ),
      ],
    );
  }
}
