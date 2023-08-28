import 'package:flutter/material.dart';

typedef TransactionParams = ({
  String title,
  Color color,
  String icon,
});

enum TransactionType {
  D(
    (
      title: "Debit",
      color: Color(0xff022E64),
      icon: "assets/money-send.svg",
    ),
  ),
  C(
    (
      title: "Credit",
      color: Color(0xffE6B014),
      icon: "assets/money-recive.svg",
    ),
  );

  const TransactionType(this.params);
  final TransactionParams params;
}

extension TransactionTypeExtension on TransactionType {
  String get title => params.title;
  Color get color => params.color;
  String get icon => params.icon;
}
