import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";

class CustomFadeRoute extends CustomRoute {
  CustomFadeRoute({
    required super.page,
    super.path,
    super.children,
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(opacity: animation, child: child);
          },
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
        );
}
