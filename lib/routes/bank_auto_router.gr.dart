// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:bank/dashboard/page/dashboard_page.dart' as _i1;
import 'package:bank/forgot_password/page/forgot_password_page.dart' as _i2;
import 'package:bank/home/page/home_page.dart' as _i3;
import 'package:bank/login/page/login_page.dart' as _i4;
import 'package:bank/profile/page/profile_page.dart' as _i5;
import 'package:bank/reset_password/page/reset_password_page.dart' as _i6;
import 'package:bank/splash/page/splash_page.dart' as _i7;
import 'package:bank/transactions/page/transactions_page.dart' as _i8;

abstract class $BankAutoRouter extends _i9.RootStackRouter {
  $BankAutoRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    DashBoardPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoardPage(),
      );
    },
    ForgotPasswordPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
      );
    },
    HomePage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
    ProfilePage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfilePage(),
      );
    },
    ResetPasswordPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPasswordPage(),
      );
    },
    SplashPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
    TransactionPage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.TransactionPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoardPage]
class DashBoardPage extends _i9.PageRouteInfo<void> {
  const DashBoardPage({List<_i9.PageRouteInfo>? children})
      : super(
          DashBoardPage.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordPage extends _i9.PageRouteInfo<void> {
  const ForgotPasswordPage({List<_i9.PageRouteInfo>? children})
      : super(
          ForgotPasswordPage.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomePage extends _i9.PageRouteInfo<void> {
  const HomePage({List<_i9.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginPage extends _i9.PageRouteInfo<void> {
  const LoginPage({List<_i9.PageRouteInfo>? children})
      : super(
          LoginPage.name,
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfilePage]
class ProfilePage extends _i9.PageRouteInfo<void> {
  const ProfilePage({List<_i9.PageRouteInfo>? children})
      : super(
          ProfilePage.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ResetPasswordPage]
class ResetPasswordPage extends _i9.PageRouteInfo<void> {
  const ResetPasswordPage({List<_i9.PageRouteInfo>? children})
      : super(
          ResetPasswordPage.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashPage]
class SplashPage extends _i9.PageRouteInfo<void> {
  const SplashPage({List<_i9.PageRouteInfo>? children})
      : super(
          SplashPage.name,
          initialChildren: children,
        );

  static const String name = 'SplashPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.TransactionPage]
class TransactionPage extends _i9.PageRouteInfo<void> {
  const TransactionPage({List<_i9.PageRouteInfo>? children})
      : super(
          TransactionPage.name,
          initialChildren: children,
        );

  static const String name = 'TransactionPage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
