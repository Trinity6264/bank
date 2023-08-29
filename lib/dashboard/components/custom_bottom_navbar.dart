import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/home_shape.dart';
import 'package:bank/common/transaction_shape.dart';
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
    return Container(
      color: const Color(0xffffffff),
      width: double.infinity,
      height: context.getNavbarHeightSize(),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(0);
              },
              child: ClipPath(
                clipper: HomeShape(),
                child: AnimatedContainer(
                  curve: Curves.ease,
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
                        tabsRouter.activeIndex == 0
                            ? "assets/home.svg"
                            : "assets/home_active.svg",
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
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                tabsRouter.setActiveIndex(1);
              },
              child: ClipPath(
                clipper: TransactionShape(),
                child: AnimatedContainer(
                    curve: Curves.ease,
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
                          tabsRouter.activeIndex == 1
                              ? "assets/transaction-minus_active.svg"
                              : "assets/transaction-minus.svg",
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
          ),
        ],
      ),
    );
  }
}
