import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/dashboard/components/appbar_component.dart';
import 'package:bank/dashboard/components/custom_bottom_navbar.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.sizeOf(context).height / 8,
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: context.primaryColor,
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height / 10,
              left: context.getMediumPaddingSize(),
              bottom: context.getMediumPaddingSize(),
              right: context.getMediumPaddingSize(),
            ),
            child: const AppBarComponent(),
          ),
        );
      },
      routes: const [
        HomePage(),
        TransactionPage(),
      ],
      animationCurve: Curves.easeInToLinear,
      animationDuration: const Duration(milliseconds: 300),
      bottomNavigationBuilder: (context, tabsRouter) {
        return CustomBottomNavbar(tabsRouter: tabsRouter);
      },
    );
  }
}
