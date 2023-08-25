import "package:auto_route/auto_route.dart";
import "package:bank/bank_observer.dart";
import "package:flutter/material.dart";

class BankAutoRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route<void> route, Route<void>? previousRoute) {
    logger.t(
      "New route pushed: ${route.settings.name} from ${previousRoute?.settings.name}",
    );
  }

  // Only override to observer tab routes.
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.t("Tab route visited: ${route.name}");
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.t("Tab route re-visited: ${route.name}");
  }

  @override
  void didPop(Route<void> route, Route<void>? previousRoute) {
    logger.t("Route popped: ${route.settings.name}");
  }

  @override
  void didRemove(Route<void> route, Route<void>? previousRoute) {
    logger.t("Route removed: ${route.settings.name}");
  }

  @override
  void didReplace({Route<void>? newRoute, Route<void>? oldRoute}) {
    logger.t("Route replaced: ${newRoute?.settings.name}");
  }
}