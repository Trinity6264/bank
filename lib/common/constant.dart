import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Constants {
  const Constants._internal();

// ? Colors
  static const primaryColor = Color(0xff022E64);
  static const primaryLightColor = Color(0xff00408F);
  static const secondaryColor = Color(0xffE6B014);
  static const whiteTextColor = Color(0xffffffff);
  static const blackTextColor = Color(0xff212121);

// ? fonts,padding sizes etc.
  static const smallPaddingSize = 8.0;
  static const mediumPaddingSize = 16.0;
  static const navbarIconSize = 32.0;

  static double getSmallPaddingSize(BuildContext context) {
    final Size(:height) = MediaQuery.of(context).size;
    if (height > 1080) {
      return Constants.smallPaddingSize * 1.3;
    } else if (height > 720) {
      return Constants.smallPaddingSize * 1.2;
    } else if (height > 640) {
      return Constants.smallPaddingSize * 1.1;
    } else if (height > 360) {
      return Constants.smallPaddingSize * 1.0;
    }

    return Constants.smallPaddingSize;
  }

  static double getMediumPaddingSize(BuildContext context) {
    final Size(:height) = MediaQuery.of(context).size;
    if (height > 1080) {
      return Constants.mediumPaddingSize * 1.3;
    } else if (height > 720) {
      return Constants.mediumPaddingSize * 1.2;
    } else if (height > 640) {
      return Constants.mediumPaddingSize * 1.1;
    } else if (height > 360) {
      return Constants.mediumPaddingSize * 1.0;
    }
    return Constants.mediumPaddingSize;
  }

  static double getNavbarIconSize(BuildContext context) {
    final Size(:height) = MediaQuery.of(context).size;
    if (height > 1080) {
      return Constants.navbarIconSize * 1.3;
    } else if (height > 720) {
      return Constants.navbarIconSize * 1.2;
    } else if (height > 640) {
      return Constants.navbarIconSize * 1.1;
    } else if (height > 360) {
      return Constants.navbarIconSize * 1.0;
    }
    return Constants.navbarIconSize;
  }

  static List<BottomNavigationBarItem> getDashboardItem(BuildContext context) {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset(
            "assets/home.svg",
            width: Constants.getNavbarIconSize(context),
          ),
        ),
        label: "Home",
        activeIcon: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffe0ecf2),
          ),
          child: SvgPicture.asset(
            "assets/home.svg",
            width: Constants.getNavbarIconSize(context),
          ),
        ),
      ),
      BottomNavigationBarItem(
        icon: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset(
            "assets/transaction-minus.svg",
            width: Constants.getNavbarIconSize(context),
          ),
        ),
        label: "Transactions",
        activeIcon: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffe0ecf2),
          ),
          child: SvgPicture.asset(
            "assets/transaction-minus.svg",
            width: Constants.getNavbarIconSize(context),
          ),
        ),
      ),
    ];
  }
}
