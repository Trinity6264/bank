import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/transaction_card.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DebitPage extends StatelessWidget {
  const DebitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DataBloc, DataState, List<TransactionModel>?>(
      selector: (state) {
        return state.data?.transaction;
      },
      builder: (context, data) {
        if (data == null) {
          return Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: context.secondaryColor,
            ),
          );
        }
        return CustomScrollView(
          slivers: [
            SliverList.separated(
              itemCount: data.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Color(0xffedf0f6),
                );
              },
              itemBuilder: (context, index) {
                final model = data[index];
                return TransactionCard(transactionModel: model);
              },
            ),
          ],
        );
      },
    );
  }
}
