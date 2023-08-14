import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataTV {
  Future<List<dynamic>> getDataTv() async {
    final response = await rootBundle.loadString('data/tv.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return dataMap['tv'] as List<dynamic>;
  }
}

final dataTv = DataTV();
