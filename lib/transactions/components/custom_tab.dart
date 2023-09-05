import 'package:bank/common/constant.dart';
import 'package:bank/data/bloc/data_bloc.dart';
import 'package:bank/enums/tab_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    required this.customTabType,
    required this.onTap,
    super.key,
  });
  final CustomTabType customTabType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DataBloc, DataState, CustomTabType>(
      selector: (state) {
        return state.selectedType;
      },
      builder: (context, state) {
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: AnimatedContainer(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: state == customTabType
                        ? context.primaryColor
                        : Colors.transparent,
                    width: state == customTabType ? 2 : 0,
                  ),
                ),
              ),
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInToLinear,
              child: Center(
                child: Text(
                  customTabType.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: context.getBodyFontSize(),
                    color: context.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
