// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:bank/dashboard/page/dashboard_page.dart' as _i3;
import 'package:bank/forgot_password/page/forgot_password_page.dart' as _i5;
import 'package:bank/home/page/home_page.dart' as _i6;
import 'package:bank/login/page/login_page.dart' as _i7;
import 'package:bank/profile/page/profile_page.dart' as _i8;
import 'package:bank/reset_password/page/reset_password_page.dart' as _i9;
import 'package:bank/transactions/all/page/all_page.dart' as _i1;
import 'package:bank/transactions/credit/page/credit_page.dart' as _i2;
import 'package:bank/transactions/debit/page/debit_page.dart' as _i4;
import 'package:bank/transactions/page/transactions_page.dart' as _i10;

abstract class $BankAutoRouter extends _i11.RootStackRouter {
  $BankAutoRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AllPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AllPage(),
      );
    },
    CreditPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreditPage(),
      );
    },
    DashBoardPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashBoardPage(),
      );
    },
    DebitPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DebitPage(),
      );
    },
    ForgotPasswordPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgotPasswordPage(),
      );
    },
    HomePage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    LoginPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    ProfilePage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    ResetPasswordPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ResetPasswordPage(),
      );
    },
    TransactionPage.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TransactionPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AllPage]
class AllPage extends _i11.PageRouteInfo<void> {
  const AllPage({List<_i11.PageRouteInfo>? children})
      : super(
          AllPage.name,
          initialChildren: children,
        );

  static const String name = 'AllPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreditPage]
class CreditPage extends _i11.PageRouteInfo<void> {
  const CreditPage({List<_i11.PageRouteInfo>? children})
      : super(
          CreditPage.name,
          initialChildren: children,
        );

  static const String name = 'CreditPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashBoardPage]
class DashBoardPage extends _i11.PageRouteInfo<void> {
  const DashBoardPage({List<_i11.PageRouteInfo>? children})
      : super(
          DashBoardPage.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DebitPage]
class DebitPage extends _i11.PageRouteInfo<void> {
  const DebitPage({List<_i11.PageRouteInfo>? children})
      : super(
          DebitPage.name,
          initialChildren: children,
        );

  static const String name = 'DebitPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgotPasswordPage]
class ForgotPasswordPage extends _i11.PageRouteInfo<void> {
  const ForgotPasswordPage({List<_i11.PageRouteInfo>? children})
      : super(
          ForgotPasswordPage.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomePage extends _i11.PageRouteInfo<void> {
  const HomePage({List<_i11.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginPage extends _i11.PageRouteInfo<void> {
  const LoginPage({List<_i11.PageRouteInfo>? children})
      : super(
          LoginPage.name,
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfilePage]
class ProfilePage extends _i11.PageRouteInfo<void> {
  const ProfilePage({List<_i11.PageRouteInfo>? children})
      : super(
          ProfilePage.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ResetPasswordPage]
class ResetPasswordPage extends _i11.PageRouteInfo<void> {
  const ResetPasswordPage({List<_i11.PageRouteInfo>? children})
      : super(
          ResetPasswordPage.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TransactionPage]
class TransactionPage extends _i11.PageRouteInfo<void> {
  const TransactionPage({List<_i11.PageRouteInfo>? children})
      : super(
          TransactionPage.name,
          initialChildren: children,
        );

  static const String name = 'TransactionPage';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
