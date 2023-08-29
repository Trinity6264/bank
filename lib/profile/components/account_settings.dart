import 'package:bank/common/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

typedef AccountSettingsParams = ({
  String iconPath,
  String title,
  bool isHavingIcon,
});

class AccountSettings extends StatelessWidget {
  const AccountSettings({
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
              if (isHavingIcon) ...[SvgPicture.asset(iconPath)],
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal:
                      !isHavingIcon ? 0 : context.getMediumPaddingSize(),
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
          color: const Color(0xFFE1E6F0).withOpacity(0.32),
          thickness: 1.5,
        ),
      ],
    );
  }
}
