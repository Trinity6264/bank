import 'package:auto_route/auto_route.dart';
import 'package:bank/common/transaction_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllPage extends StatelessWidget {
  const AllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
    );
  }
}
