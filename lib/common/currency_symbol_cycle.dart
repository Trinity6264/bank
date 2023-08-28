import 'package:bank/common/constant.dart';
import 'package:bank/enums/transaction_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyCircleSymbol extends StatelessWidget {
  const CurrencyCircleSymbol({
    required this.transactionType,
    super.key,
  });
  final TransactionType transactionType;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: context.getSmallPaddingSize),
      height: context.getNavbarHeightSize(),
      width: context.getNavbarHeightSize(),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: transactionType.bgColor,
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: EdgeInsets.all(
          context.getSmallPaddingSize,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: transactionType.gradientColors,
            stops: const [0.0, 1.0],
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(transactionType.icon),
      ),
    );
  }
}
