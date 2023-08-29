import 'package:bank/common/constant.dart';
import 'package:bank/common/currency_symbol_cycle.dart';
import 'package:bank/common/transaction_card_detail.dart';
import 'package:bank/enums/transaction_type.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    required this.transactionModel,
    super.key,
  });
  final TransactionModel transactionModel;

  void _showDraggableBottomSheet(
    BuildContext context,
    TransactionModel transactionModel,
  ) {
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
            return TransactionCardDetail(
              controller: scrollController,
              transactionModel: transactionModel,
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final TransactionModel(:amount, :date, :narration, :type) =
        transactionModel;
    return GestureDetector(
      onTap: () {
        _showDraggableBottomSheet(context, transactionModel);
      },
      child: Container(
        padding: EdgeInsets.all(context.getMediumPaddingSize()),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrencyCircleSymbol(transactionType: type),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "GHC $amount",
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
                          color: type.bgColor,
                        ),
                        child: Text(
                          type.title,
                          style: TextStyle(
                            color: type.color,
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
                            color: type.color,
                            letterSpacing: 0.175,
                            fontWeight: FontWeight.w700,
                            fontSize: context.getBodySmallFontSize,
                          ),
                        ),
                        Text(
                          narration,
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
                  date,
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
