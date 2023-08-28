import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomePage(),
        TransactionPage(),
      ],
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 500),
      bottomNavigationBuilder: (context, tabsRouter) {
        return Container(
          width: double.infinity,
          height: context.getNavbarHeightSize(),
          color: Colors.amber,
        );
      },
    );
  }
}
