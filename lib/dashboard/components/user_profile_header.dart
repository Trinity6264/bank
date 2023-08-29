import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/customer/model/customer_model.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    TimeOfDay.now().greetingsTime,
                    style: TextStyle(
                      color: const Color(0xffffffff).withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: context.getGreetingsTextFontSize,
                    ),
                  ),
                  const SizedBox(height: 4),
                  BlocSelector<DataBloc, DataState, List<CustomerModel>?>(
                    selector: (state) {
                      return state.data?.user;
                    },
                    builder: (context, data) {
                      if (data == null) {
                        return const SizedBox.shrink();
                      } else {
                        return Text(
                          "${data[0].title} ${data[0].name}",
                          style: TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: context.getNameTextFontSize,
                          ),
                        );
                      }
                    },
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

extension TimeOfDayExtension on TimeOfDay {
  String get greetingsTime {
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour > 11 && hour < 16) {
      return "Good Afternon";
    }
    return "Good Evening";
  }
}
