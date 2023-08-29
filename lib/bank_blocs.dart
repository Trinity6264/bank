import 'package:bank/bank.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/data/repository/data_repository.dart';
import 'package:bank/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BankBlocs extends StatelessWidget {
  const BankBlocs({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<DataRepository>(
          create: (context) => DataRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
          ),
          BlocProvider<DataBloc>(
            create: (context) => DataBloc(context.read<DataRepository>()),
          ),
        ],
        child: const Bank(),
      ),
    );
  }
}
