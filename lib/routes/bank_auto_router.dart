import 'package:auto_route/auto_route.dart';
import 'package:bank/routes/custom_fade_route.dart';

import 'bank_auto_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class BankAutoRouter extends $BankAutoRouter {
  BankAutoRouter();

  @override
  final routes = <AutoRoute>[
    AutoRoute(page: LoginPage.page, initial: true),
    CustomFadeRoute(page: ResetPasswordPage.page),
    CustomFadeRoute(page: ProfilePage.page),
    CustomFadeRoute(page: SplashPage.page),
    CustomFadeRoute(page: ForgotPasswordPage.page),
    CustomFadeRoute(
      page: DashBoardPage.page,
      children: [
        AutoRoute(page: HomePage.page, initial: true),
        AutoRoute(page: TransactionPage.page),
      ],
    ),
  ];
}
