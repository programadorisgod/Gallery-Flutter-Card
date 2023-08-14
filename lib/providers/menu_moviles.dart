import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuMoviles {
  Future<List<dynamic>> getDataMoviles() async {
    final response = await rootBundle.loadString('data/moviles.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return dataMap['phones'];
  }
}

final dataMoviles = _MenuMoviles();
