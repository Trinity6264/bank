import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

typedef AccountSettingsParams = ({
  String iconPath,
  String title,
  bool isHavingIcon,
});

class AccountSettingsWidget extends StatelessWidget {
  const AccountSettingsWidget({
    required this.params,
    super.key,
  });
  final AccountSettingsParams params;

  @override
  Widget build(BuildContext context) {
    final (:iconPath, :title, :isHavingIcon) = params;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.all(
            context.getMediumPaddingSize(),
          ),
          child: Row(
            children: [
            isHavingIcon ?  SvgPicture.asset(iconPath):SizedBox.shrink(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.getMediumPaddingSize(),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xff001530),
                    fontWeight: FontWeight.w400,
                    fontSize: context.getBodyFontSize(),
                    letterSpacing: 0.175,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: const Color(0xe1e6f099).withOpacity(0.6),
          thickness: 1.5,
        ),
      ],
    );
  }
}
