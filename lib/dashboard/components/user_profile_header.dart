import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            context.pushRoute(const ProfilePage());
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Union.png",
                width: context.getAppbarProfilePictureSize,
                height: context.getAppbarProfilePictureSize,
                fit: BoxFit.fill,
              ),
              SizedBox(width: context.getSmallPaddingSize),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: context.getGreetingsTextFontSize,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Mr. John Jimoh",
                    style: TextStyle(
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontSize: context.getNameTextFontSize,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SvgPicture.asset(
          "assets/logo.svg",
          width: MediaQuery.sizeOf(context).height / 10,
        ),
      ],
    );
  }
}
