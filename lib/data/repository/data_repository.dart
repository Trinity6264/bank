import 'dart:convert';

import 'package:bank/bank_observer.dart';
import 'package:bank/data/model/data_model.dart';
import 'package:flutter/services.dart' show rootBundle; 

import 'package:multiple_result/multiple_result.dart';

class DataRepository {
  Future<Result<DataModel, Exception>> loadJsonData() async {
    final jsonFile = await rootBundle.loadString(
      'assets/json/customer_data.json',
    );
    final jsonData = json.decode(jsonFile);

    final data = DataModel.fromJson(jsonData);
    // logger.i(data);
    return Result.success(data);
  }
}
