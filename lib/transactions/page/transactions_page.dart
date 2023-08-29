import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: const Color(0xFFE1E6F0).withOpacity(0.32),
          padding: EdgeInsets.symmetric(
            vertical: context.getMediumPaddingSize(),
            horizontal: context.getMediumPaddingSize(),
          ),
          child: Text(
            "Transactions",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: const Color(0xff001530),
              fontSize: context.getTransactionTextFontSize,
            ),
          ),
        ),
        Expanded(
          child: AutoTabsRouter.tabBar(
            animatePageTransition: true,
            builder: (context, child, tabController) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: const Color(0xFFE1E6F0).withOpacity(0.32),
                    child: TabBar(
                      controller: tabController,
                      indicatorColor: context.primaryColor,
                      indicatorWeight: 2.0,
                      labelColor: context.primaryColor,
                      labelPadding: const EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: context.getBodyFontSize(),
                        color: context.primaryColor,
                      ),
                      unselectedLabelColor: context.primaryColor,
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: context.getBodyFontSize(),
                        color: context.primaryColor,
                      ),
                      tabs: const [
                        Text("All"),
                        Text("Debit"),
                        Text("Credit"),
                      ],
                    ),
                  ),
                  Expanded(child: child),
                ],
              );
            },
            routes: const [
              AllPage(),
              DebitPage(),
              CreditPage(),
            ],
          ),
        ),
      ],
    );
  }
}
