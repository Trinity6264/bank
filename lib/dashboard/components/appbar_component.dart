import 'package:bank/common/constant.dart';
import 'package:bank/dashboard/components/user_profile_header.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({super.key});

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  bool _hasStarted = false;

  void start() async {
    setState(() {
      _hasStarted = true;
    });
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return !_hasStarted
        ? const SizedBox()
        : BlocSelector<DataBloc, DataState, List<TransactionModel>?>(
            selector: (state) {
              
              return state.data?.transaction;
            },
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(seconds: 2),
                child: state == null
                    ? Center(
                        child: Text(
                          TimeOfDay.now().greetingsTime,
                          style: TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: context.getTransactionTextFontSize,
                          ),
                        ),
                      )
                    : const UserProfileHeader(),
              );
            },
          );
  }
}
