import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/custom_rounded_button.dart';
import 'package:bank/login/components/login_email_input.dart';
import 'package:bank/login/components/login_password_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0583, 1.0, 1.0],
                colors: [
                  Color(0xFF022E64),
                  Color(0xFF004395),
                  Color(0xFF00408F),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: Constants.getMediumPaddingSize(context),
              vertical: MediaQuery.sizeOf(context).height / 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/logo.svg'),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.sizeOf(context).height / 20,
                          bottom: MediaQuery.sizeOf(context).height / 15,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LoginEmailInput(),
                            LoginPasswordInput(),
                          ],
                        ),
                      ),
                      CustomRoundedButton(
                        text: "Login",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: Constants.getTextButtonFontSize(context),
                      color: const Color(0xffF5F5F5),
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.175,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
