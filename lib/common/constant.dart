import 'package:flutter/material.dart'
    show BuildContext, Color, Size, MediaQuery;

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
  double get appbarProfilePictureSize => 42.0;

// ? Radius
  double get mediumRadiusSize => 16.0;

  // ? Body font size
  double get bodyFontSize => 14.0;
  double get bodySmallFontSize => 10.0;
  double get greetingsTextFontSize => 12.0;
  double get nameTextFontSize => 16.0;
  double get transactionTextFontSize => 18.0;
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

  double get getBodySmallFontSize {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return bodySmallFontSize * 1.3;
    } else if (height > 720) {
      return bodySmallFontSize * 1.2;
    } else if (height > 640) {
      return bodySmallFontSize * 1.1;
    } else if (height > 360) {
      return bodySmallFontSize * 1.0;
    }

    return bodySmallFontSize;
  }

  double get getGreetingsTextFontSize {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return greetingsTextFontSize * 1.3;
    } else if (height > 720) {
      return greetingsTextFontSize * 1.2;
    } else if (height > 640) {
      return greetingsTextFontSize * 1.1;
    } else if (height > 360) {
      return greetingsTextFontSize * 1.0;
    }

    return greetingsTextFontSize;
  }

  double get getNameTextFontSize {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return nameTextFontSize * 1.3;
    } else if (height > 720) {
      return nameTextFontSize * 1.2;
    } else if (height > 640) {
      return nameTextFontSize * 1.1;
    } else if (height > 360) {
      return nameTextFontSize * 1.0;
    }

    return nameTextFontSize;
  }
  double get getTransactionTextFontSize {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return transactionTextFontSize * 1.3;
    } else if (height > 720) {
      return transactionTextFontSize * 1.2;
    } else if (height > 640) {
      return transactionTextFontSize * 1.1;
    } else if (height > 360) {
      return transactionTextFontSize * 1.0;
    }

    return transactionTextFontSize;
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

  double get getSmallPaddingSize {
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


  double get getAppbarProfilePictureSize {
    final Size(:height) = MediaQuery.of(this).size;
    if (height > 1080) {
      return appbarProfilePictureSize * 1.3;
    } else if (height > 720) {
      return appbarProfilePictureSize * 1.2;
    } else if (height > 640) {
      return appbarProfilePictureSize * 1.1;
    } else if (height > 360) {
      return appbarProfilePictureSize * 1.0;
    }
    return appbarProfilePictureSize;
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
      return navbarIconSize * 1.15;
    } else if (height > 720) {
      return navbarIconSize * 1.13;
    } else if (height > 640) {
      return navbarIconSize * 1.12;
    } else if (height > 360) {
      return navbarIconSize * 1.0;
    }
    return navbarIconSize;
  }
}
