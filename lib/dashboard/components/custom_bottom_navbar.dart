import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({
    required this.tabsRouter,
    super.key,
  });
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.getNavbarHeightSize(),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(0);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: tabsRouter.activeIndex == 0
                    ? context.primaryColor
                    : const Color(0xffffffff),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/home.svg",
                      width: context.getNavbarIconSize(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: tabsRouter.activeIndex == 0
                              ? context.secondaryColor
                              : context.primaryColor,
                          fontWeight: tabsRouter.activeIndex == 0
                              ? FontWeight.w700
                              : FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(1);
              },
              child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  color: tabsRouter.activeIndex == 1
                      ? context.primaryColor
                      : const Color(0xffffffff),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/transaction-minus.svg",
                        width: context.getNavbarIconSize(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "Transactions",
                          style: TextStyle(
                            color: tabsRouter.activeIndex == 1
                                ? context.secondaryColor
                                : context.primaryColor,
                            fontWeight: tabsRouter.activeIndex == 1
                                ? FontWeight.w700
                                : FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
