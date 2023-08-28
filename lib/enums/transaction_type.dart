import 'package:flutter/material.dart';

typedef TransactionParams = ({
  String title,
  Color color,
  Color bgColor,
  List<Color> linearGradient,
  String icon,
});

enum TransactionType {
  D(
    (
      title: "Debit",
      color: Color(0xff022E64),
      bgColor: Color.fromRGBO(120, 200, 225, 0.08),
      linearGradient: [
        Color(0xFF022E64),
        Color(0xFF0E5DBD),
      ],
      icon: "assets/money-send.svg",
    ),
  ),
  C(
    (
      title: "Credit",
      color: Color(0xffE6B014),
      bgColor: Color(0xffFDF8EC),
      linearGradient: [
        Color(0xFFA07801),
        Color(0xFFE0AD0F),
      ],
      icon: "assets/money-recive.svg",
    ),
  );

  const TransactionType(this.params);
  final TransactionParams params;
}

extension TransactionTypeExtension on TransactionType {
  String get title => params.title;
  Color get color => params.color;
  Color get bgColor => params.bgColor;
  List<Color> get gradientColors => params.linearGradient;
  String get icon => params.icon;
}
