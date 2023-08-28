import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

typedef BottomCardInfoParam = ({
  String key,
  String value,
});

class BottomCardInfo extends StatelessWidget {
  const BottomCardInfo({
    required this.cardInfoParam,
    super.key,
  });
  final BottomCardInfoParam cardInfoParam;

  @override
  Widget build(BuildContext context) {
    final (:key, :value) = cardInfoParam;
    return Padding(
      padding: EdgeInsets.only(
        bottom: context.getSmallPaddingSize,
        left: context.getMediumPaddingSize(),
        right: context.getMediumPaddingSize(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            key,
            style: TextStyle(
              fontSize: context.getGreetingsTextFontSize,
              fontWeight: FontWeight.w400,
              color: const Color(0xff212121),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: context.getGreetingsTextFontSize,
              fontWeight: FontWeight.w700,
              color: const Color(0xff212121),
            ),
          ),
        ],
      ),
    );
  }
}
