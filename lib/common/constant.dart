import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {

// ? Colors
  Color get primaryColor => const Color(0xff022E64);
  Color get primaryLightColor => const Color(0xff00408F);
  Color get secondaryColor => const Color(0xffE6B014);
  Color get whiteTextColor => const Color(0xffffffff);
  Color get blackTextColor => const Color(0xff212121);

// ? fonts,padding sizes etc.

//? Padding, Height, width
  double get smallPaddingSize => 8.0;
  double get mediumPaddingSize => 16.0;
  double get navbarIconSize => 32.0;
  double get navbarHeightSize => 56.0;

// ? Radius
  double get mediumRadiusSize => 16.0;

  // ? Body font size
  double get bodyFontSize => 14.0;
  double get textButtonFontSize => 14.0;

  double getBodyFontSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return bodyFontSize * 1.3;
    } else if (height > 720) {
      return bodyFontSize * 1.2;
    } else if (height > 640) {
      return bodyFontSize * 1.1;
    } else if (height > 360) {
      return bodyFontSize * 1.0;
    }

    return bodyFontSize;
  }

  double getTextButtonFontSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return textButtonFontSize * 1.3;
    } else if (height > 720) {
      return textButtonFontSize * 1.2;
    } else if (height > 640) {
      return textButtonFontSize * 1.1;
    } else if (height > 360) {
      return textButtonFontSize * 1.0;
    }

    return textButtonFontSize;
  }

  double getMediumRadiusSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return mediumRadiusSize * 1.2;
    } else if (height > 720) {
      return mediumRadiusSize * 1.2;
    } else if (height > 640) {
      return mediumRadiusSize * 1.1;
    } else if (height > 360) {
      return mediumRadiusSize * 1.0;
    }

    return mediumRadiusSize;
  }

  double getSmallPaddingSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return smallPaddingSize * 1.3;
    } else if (height > 720) {
      return smallPaddingSize * 1.2;
    } else if (height > 640) {
      return smallPaddingSize * 1.1;
    } else if (height > 360) {
      return smallPaddingSize * 1.0;
    }

    return smallPaddingSize;
  }

  double getMediumPaddingSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return mediumPaddingSize * 1.3;
    } else if (height > 720) {
      return mediumPaddingSize * 1.2;
    } else if (height > 640) {
      return mediumPaddingSize * 1.1;
    } else if (height > 360) {
      return mediumPaddingSize * 1.0;
    }
    return mediumPaddingSize;
  }

  double getNavbarHeightSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return navbarHeightSize * 1.3;
    } else if (height > 720) {
      return navbarHeightSize * 1.2;
    } else if (height > 640) {
      return navbarHeightSize * 1.1;
    } else if (height > 360) {
      return navbarHeightSize * 1.0;
    }
    return navbarHeightSize;
  }

  double getNavbarIconSize() {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return navbarIconSize * 1.3;
    } else if (height > 720) {
      return navbarIconSize * 1.2;
    } else if (height > 640) {
      return navbarIconSize * 1.1;
    } else if (height > 360) {
      return navbarIconSize * 1.0;
    }
    return navbarIconSize;
  }

  //  List<BottomNavigationBarItem> getDashboardItem() {
  //   return <BottomNavigationBarItem>[
  //     BottomNavigationBarItem(
  //       backgroundColor: Colors.amber,
  //       icon: Container(
  //         padding: const EdgeInsets.all(8),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: SvgPicture.asset(
  //           "assets/home.svg",
  //           width: getNavbarIconSize(this),
  //         ),
  //       ),
  //       label: "Home",
  //       activeIcon: Container(
  //         padding: const EdgeInsets.all(8),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //           color: const Color(0xffe0ecf2),
  //         ),
  //         child: SvgPicture.asset(
  //           "assets/home.svg",
  //           width: getNavbarIconSize(this),
  //         ),
  //       ),
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Container(
  //         padding: const EdgeInsets.all(8),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //         ),
  //         child: SvgPicture.asset(
  //           "assets/transaction-minus.svg",
  //           width: getNavbarIconSize(this),
  //         ),
  //       ),
  //       label: "Transactions",
  //       activeIcon: Container(
  //         padding: const EdgeInsets.all(8),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //           color: const Color(0xffe0ecf2),
  //         ),
  //         child: SvgPicture.asset(
  //           "assets/transaction-minus.svg",
  //           width: getNavbarIconSize(this),
  //         ),
  //       ),
  //     ),
  //   ];
  // }
}

// extension BuildthisExtension on Buildthis {

//   double getNavbarHeightSize() {
//     final Size(:height) = MediaQuery.of(this).size;
//     if (height > 1080) {
//       return navbarHeightSize * 1.3;
//     } else if (height > 720) {
//       return navbarHeightSize * 1.2;
//     } else if (height > 640) {
//       return navbarHeightSize * 1.1;
//     } else if (height > 360) {
//       return navbarHeightSize * 1.0;
//     }
//     return Constants.navbarHeightSize;
//   }
  
// }
