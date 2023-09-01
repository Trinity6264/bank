import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bank/common/constant.dart';
import 'package:bank/common/transaction_card.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/home/components/loading_widget.dart';
import 'package:bank/transactions/model/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height / 5,
          child: Stack(
            children: [
              Image.asset(
                "assets/frame.png",
                width: double.infinity,
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.getMediumPaddingSize(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Account Balance",
                      style: TextStyle(
                        color: const Color(0xffffffff).withOpacity(0.8),
                        fontSize: context.getBodyFontSize(),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "GHC 10,000.00",
                      style: TextStyle(
                        color: const Color(0xffffffff),
                        fontSize: context.getTextBalanceFontSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Checking Account",
                          style: TextStyle(
                            color: const Color(0xffffffff),
                            fontSize: context.getBodySmallFontSize,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Text(
                          "875431143137098707",
                          style: TextStyle(
                            color: const Color(0xffffffff).withOpacity(0.8),
                            fontSize: context.getBodySmallFontSize,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: const Color(0xffffffff).withOpacity(0.32),
          padding: EdgeInsets.symmetric(
            horizontal: context.getMediumPaddingSize(),
            vertical: context.getSmallPaddingSize,
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                "Recent Transactions",
                maxFontSize: 16,
                minFontSize: 12,
                stepGranularity: 2.0,
                style: TextStyle(
                  color: Color(0xff001530),
                  fontWeight: FontWeight.w600,
                ),
              ),
              AutoSizeText(
                "See All",
                maxFontSize: 12,
                minFontSize: 8,
                stepGranularity: 2.0,
                style: TextStyle(
                  color: Color(0xff001530),
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.174,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BlocSelector<DataBloc, DataState, List<TransactionModel>?>(
            selector: (state) {
              return state.data?.transaction;
            },
            builder: (context, data) {
              return AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: data == null
                    ? Center(
                        child: LoadingWidget(
                          onLoad: () {
                            context
                                .read<DataBloc>()
                                .add(const DataEvent.onLoadData());
                          },
                        ),
                      )
                    : CustomScrollView(
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
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}
