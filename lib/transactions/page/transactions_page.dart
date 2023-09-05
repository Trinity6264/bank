import 'package:auto_route/auto_route.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/transaction_card.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/enums/tab_type.dart';
import 'package:bank/transactions/components/custom_tab.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<SliverAnimatedListState> globalKey =
    GlobalKey<SliverAnimatedListState>();

@RoutePage()
class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DataBloc, DataState>(
      listener: (context, state) {
        for (var i = 0; i < state.transactions.length; i++) {
          globalKey.currentState!.insertItem(
            i,
            duration: const Duration(milliseconds: 400),
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height / 7,
            color: const Color(0xFFE1E6F0).withOpacity(0.32),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.getMediumPaddingSize(),
                    horizontal: context.getMediumPaddingSize(),
                  ),
                  child: Text(
                    "Transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff001530),
                      fontSize: context.getTransactionTextFontSize,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTab(
                        customTabType: CustomTabType.all,
                        onTap: () {
                          context.read<DataBloc>().add(
                                const DataEvent.onLoadAllData(),
                              );
                        },
                      ),
                      CustomTab(
                        customTabType: CustomTabType.debit,
                        onTap: () {
                          context
                              .read<DataBloc>()
                              .add(const DataEvent.onLoadDebitData());
                        },
                      ),
                      CustomTab(
                        customTabType: CustomTabType.credit,
                        onTap: () {
                          context
                              .read<DataBloc>()
                              .add(const DataEvent.onLoadCreditData());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocSelector<DataBloc, DataState, List<TransactionModel>?>(
              selector: (state) {
                return state.transactions;
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
                    SliverAnimatedList(
                      key: globalKey,
                      initialItemCount: data.length,
                      itemBuilder: (context, index, animation) {
                        if (index >= data.length) {
                          return const SizedBox.shrink();
                        }
                        final model = data[index];
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1),
                            end: const Offset(0, 0),
                          ).animate(
                            CurvedAnimation(
                              parent: animation,
                              curve: Curves.linear,
                            ),
                          ),
                          child: FadeTransition(
                            opacity: Tween<double>(begin: 0, end: 1)
                                .animate(animation),
                            alwaysIncludeSemantics: true,
                            child: TransactionCard(transactionModel: model),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
