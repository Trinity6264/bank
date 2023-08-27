import 'package:bank/bank_blocs.dart';
import 'package:bank/bank_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const BankObserver();
  runApp(const BankBlocs());
}
