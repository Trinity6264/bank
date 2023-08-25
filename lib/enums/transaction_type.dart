import 'package:bank/common/constant.dart';
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
      color: Constants.primaryColor,
      icon: "assets/money-send.svg",
    ),
  ),
  C(
    (
      title: "Credit",
      color: Constants.secondaryColor,
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
