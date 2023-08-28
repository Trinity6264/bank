import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/custom_back_button.dart';
import 'package:bank/profile/components/account_settings_widget.dart';
import 'package:flutter/material.dart';

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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBackButton(),
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
                      const Expanded(
                        child: Row(),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: const Color(0xE1E6F052).withOpacity(0.32),
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
                const AccountSettingsWidget(
                  params: (
                    iconPath: "assets/lock.svg",
                    title: "Change Account Password",
                    isHavingIcon: true,
                  ),
                ),
                const AccountSettingsWidget(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Logout",
                    isHavingIcon: true,
                  ),
                ),
                Container(
                  color: const Color(0xE1E6F052).withOpacity(0.32),
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
                const AccountSettingsWidget(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Terms and Conditions",
                    isHavingIcon: false,
                  ),
                ),
                const AccountSettingsWidget(
                  params: (
                    iconPath: "assets/logout.svg",
                    title: "Privacy Policy",
                    isHavingIcon: false,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: const Color(0xe1e6f099).withOpacity(0.6),
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
