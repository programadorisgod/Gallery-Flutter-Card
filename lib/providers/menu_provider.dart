// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuHome {
  
  Future<List<dynamic>> loadOptions() async {
    final response = await rootBundle.loadString('data/data.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return dataMap['rutas'] as List<dynamic>;
  }
}

final menuHome = _MenuHome();
