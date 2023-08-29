import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/dashboard/components/custom_bottom_navbar.dart';
import 'package:bank/dashboard/components/user_profile_header.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/routes/bank_auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  void didChangeDependencies() {
    if (mounted) {
      context.read<DataBloc>().add(const DataEvent.onLoadData());
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return PreferredSize(
          preferredSize: Size.fromHeight(
            MediaQuery.sizeOf(context).height / 8,
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
            child: const UserProfileHeader(),
          ),
        );
      },
      routes: const [
        HomePage(),
        TransactionPage(),
      ],
      animationCurve: Curves.easeInToLinear,
      animationDuration: const Duration(milliseconds: 300),
      bottomNavigationBuilder: (context, tabsRouter) {
        return CustomBottomNavbar(tabsRouter: tabsRouter);
      },
    );
  }
}
