import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/custom_back_button.dart';
import 'package:bank/profile/components/account_settings.dart';
import 'package:bank/profile/components/profile_info.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          MediaQuery.sizeOf(context).height / 10,
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: context.primaryColor,
          padding: EdgeInsets.only(
            top: MediaQuery.sizeOf(context).height / 10,
            left: context.getMediumPaddingSize(),
            bottom: context.getMediumPaddingSize(),
            right: context.getMediumPaddingSize(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomBackButton(),
              SvgPicture.asset(
                "assets/logo.svg",
                width: MediaQuery.sizeOf(context).height / 10,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height / 5,
                  color: const Color(0xffFDF8EC),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "assets/Union.png",
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.getSmallPaddingSize,
                            horizontal: context.getSmallPaddingSize,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: context.getSmallPaddingSize,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AccountInfo(
                                      accountInfoParams: (
                                        title: "FIRST NAME",
                                        name: "JOHN",
                                      ),
                                    ),
                                    Spacer(),
                                    AccountInfo(
                                      accountInfoParams: (
                                        title: "OTHER NAMES",
                                        name: "JIMOH",
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: context.getSmallPaddingSize,
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AccountInfo(
                                      accountInfoParams: (
                                        title: "GENDER",
                                        name: "MALE",
                                      ),
                                    ),
                                    Spacer(),
                                    AccountInfo(
                                      accountInfoParams: (
                                        title: "TITLE",
                                        name: "MR",
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AccountInfo(
                                    accountInfoParams: (
                                      title: "ID",
                                      name: "23399922",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xFFE1E6F0).withOpacity(0.32),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.getMediumPaddingSize(),
                    vertical: context.getSmallPaddingSize,
                  ),
                  child: Text(
                    "Account Settings",
                    style: TextStyle(
                      color: const Color(0xff001530),
                      fontWeight: FontWeight.w600,
                      fontSize: context.getBodyFontSize(),
                    ),
                  ),
                ),
                AccountSettings(
                  params: (
                    iconPath: "assets/lock.svg",
                    title: "Change Account Password",
                    isHavingIcon: true,
                    isLast: false,
                    onPressed: () {
                      context.pushRoute(const ResetPasswordPage());
                    },
                  ),
                ),
                AccountSettings(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Logout",
                    isLast: true,
                    isHavingIcon: true,
                    onPressed: () {
                      context.pushRoute(const LoginPage());
                    },
                  ),
                ),
                Container(
                  color: const Color(0xFFE1E6F0).withOpacity(0.32),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.getMediumPaddingSize(),
                    vertical: context.getSmallPaddingSize,
                  ),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: const Color(0xff001530),
                      fontWeight: FontWeight.w600,
                      fontSize: context.getBodyFontSize(),
                    ),
                  ),
                ),
                AccountSettings(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Terms and Conditions",
                    isHavingIcon: false,
                    isLast: false,
                    onPressed: () {},
                  ),
                ),
                AccountSettings(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Privacy Policy",
                    isLast: false,
                    isHavingIcon: false,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: const Color(0xFFE1E6F0).withOpacity(0.32),
            thickness: 1.5,
          ),
          Container(
            padding: EdgeInsets.all(
              context.getSmallPaddingSize,
            ),
            child: Align(
              child: Text(
                "App Version",
                style: TextStyle(
                  color: const Color(0xff001530),
                  fontWeight: FontWeight.w400,
                  fontSize: context.getGreetingsTextFontSize,
                  letterSpacing: 0.175,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
