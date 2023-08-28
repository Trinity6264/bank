import 'package:bank/common/bottom_card_info.dart';
import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';

class TransactionCardDetail extends StatelessWidget {
  const TransactionCardDetail({
    super.key,
    required this.controller,
  });
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width / 10,
            height: 5,
            margin: EdgeInsets.only(
              top: context.getMediumPaddingSize(),
            ),
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Expanded(
            child: ListView(
              controller: controller,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.sizeOf(context).height / 30,
                  ),
                  child: Align(
                    child: Text(
                      "Transaction Details",
                      style: TextStyle(
                        color: const Color(0xff001530),
                        fontWeight: FontWeight.w400,
                        fontSize: context.getBodyFontSize(),
                      ),
                    ),
                  ),
                ),
                const BottomCardInfo(
                  cardInfoParam: (
                    key: "Balance Before Transaction",
                    value: "GHC 0.00",
                  ),
                ),
                const BottomCardInfo(
                  cardInfoParam: (
                    key: "Balance After Transaction",
                    value: "GHC 10,000.00",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.getMediumPaddingSize(),
                  ),
                  child: const Divider(thickness: 1.0),
                ),
                const BottomCardInfo(
                  cardInfoParam: (
                    key: "Transaction Date",
                    value: "01-02-2021",
                  ),
                ),
                const BottomCardInfo(
                  cardInfoParam: (
                    key: "Transaction Direction",
                    value: "Credit",
                  ),
                ),
                const BottomCardInfo(
                  cardInfoParam: (
                    key: "Transaction Narration",
                    value: "Deposit",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.getMediumPaddingSize(),
                  ),
                  child: const Divider(thickness: 1.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
