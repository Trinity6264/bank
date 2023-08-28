import 'package:bank/common/constant.dart';
import 'package:bank/common/currency_symbol_cycle.dart';
import 'package:bank/common/transaction_card_detail.dart';
import 'package:bank/enums/transaction_type.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    required this.index,
    super.key,
  });
  final int index;

  void _showDraggableBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.8,
          minChildSize: 0.2,
          maxChildSize: 0.99,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return TransactionCardDetail(controller: scrollController);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDraggableBottomSheet(context);
      },
      child: Container(
        padding: EdgeInsets.all(context.getMediumPaddingSize()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrencyCircleSymbol(
              transactionType:
                  index % 2 == 0 ? TransactionType.C : TransactionType.D,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "GHC 1,500.00",
                        style: TextStyle(
                          color: const Color(0xff212121),
                          fontWeight: FontWeight.w700,
                          fontSize: context.getNameTextFontSize,
                        ),
                      ),
                      SizedBox(width: context.getSmallPaddingSize),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 9,
                          vertical: 6,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.26),
                          color: index % 2 == 0
                              ? TransactionType.C.bgColor
                              : TransactionType.D.bgColor,
                        ),
                        child: Text(
                          index % 2 == 0
                              ? TransactionType.C.title
                              : TransactionType.D.title,
                          style: TextStyle(
                            color: index % 2 == 0
                                ? TransactionType.C.color
                                : TransactionType.D.color,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: context.getSmallPaddingSize,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "#",
                          style: TextStyle(
                            color: index % 2 == 0
                                ? TransactionType.C.color
                                : TransactionType.D.color,
                            letterSpacing: 0.175,
                            fontWeight: FontWeight.w700,
                            fontSize: context.getBodySmallFontSize,
                          ),
                        ),
                        Text(
                          "Inflow",
                          style: TextStyle(
                            color: const Color(0xff616161),
                            letterSpacing: 0.175,
                            fontWeight: FontWeight.w400,
                            fontSize: context.getBodySmallFontSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "01-02-2021",
                  style: TextStyle(
                    fontSize: context.getBodySmallFontSize,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff616161),
                    letterSpacing: 0.175,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
