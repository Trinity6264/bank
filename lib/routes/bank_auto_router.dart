import 'package:auto_route/auto_route.dart';

import 'bank_auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class BankAutoRouter extends $BankAutoRouter {
  BankAutoRouter();

  @override
  final routes = <AutoRoute>[
    AutoRoute(page: ProfilePage.page, initial: true),
    AutoRoute(page: LoginPage.page, ),
    AutoRoute(page: ForgotPasswordPage.page),
    AutoRoute(
      page: DashBoardPage.page,
      children: [
        AutoRoute(page: HomePage.page, initial: true),
        AutoRoute(page: TransactionPage.page),
      ],
    ),
  ];
}
