import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _DataPc {
  Future<List<dynamic>> getDataPc() async {
    final response = await rootBundle.loadString('data/pcs.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return dataMap['pcs'];
  }
}

final dataPcs = _DataPc();
