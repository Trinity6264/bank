import "package:bank/routes/bank_auto_route_observer.dart";
import "package:bank/routes/bank_auto_router.dart";
import "package:flutter/material.dart";

final _appRouter = BankAutoRouter();

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
        navigatorObservers: () {
          return [BankAutoRouteObserver()];
        },
      ),
      builder: (context, router) {
        return router ?? const Text("This error should never happen");
      },
      title: "YAYA KK",
    );
  }
}
