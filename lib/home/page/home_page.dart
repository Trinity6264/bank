import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/transaction_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/frame.png",
          width: double.infinity,
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height / 5,
        ),
        Container(
          width: double.infinity,
          color: const Color(0xffffffff).withOpacity(0.32),
          padding: EdgeInsets.symmetric(
            horizontal: context.getMediumPaddingSize(),
            vertical: context.getSmallPaddingSize,
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                "Recent Transactions",
                maxFontSize: 16,
                minFontSize: 12,
                stepGranularity: 2.0,
                style: TextStyle(
                  color: Color(0xff001530),
                  fontWeight: FontWeight.w600,
                ),
              ),
              AutoSizeText(
                "See All",
                maxFontSize: 12,
                minFontSize: 8,
                stepGranularity: 2.0,
                style: TextStyle(
                  color: Color(0xff001530),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.174,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverList.separated(
                itemCount: 10,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Color(0xffedf0f6),
                  );
                },
                itemBuilder: (context, index) {
                  return TransactionCard(index: index);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
