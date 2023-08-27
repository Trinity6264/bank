import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/custom_rounded_button.dart';
import 'package:bank/forgot_password/components/confirmed_password_input.dart';
import 'package:bank/forgot_password/components/password_input.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:height) = MediaQuery.sizeOf(context);

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
              vertical: height / 30,
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
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: height / 15,
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PasswordInput(),
                            ConfirmedPasswordInput(),
                          ],
                        ),
                      ),
                      CustomRoundedButton(
                        text: "Reset Password",
                        onPressed: () {},
                      ),
                    ],
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
