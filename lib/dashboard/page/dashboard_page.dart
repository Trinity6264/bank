import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [],
      animationCurve: Curves.easeIn,
      animationDuration: const Duration(milliseconds: 500),
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          elevation: 0.0,
          items: const [],
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xffffffff),
          selectedItemColor: const Color(0xff006495),
          unselectedItemColor: const Color(0xff8C9198),
          selectedLabelStyle: const TextStyle(
            color: Color(0xff006495),
            // fontSize: Constants.getLabelSmalFontSize(context),
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
            fontFamily: "Roboto",
          ),
          unselectedLabelStyle: const TextStyle(
            color: Color(0xff8C9198),
            // fontSize: Constants.getLabelSmalFontSize(context),
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            fontFamily: "Roboto",
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
        );
      },
    );
  }
}
