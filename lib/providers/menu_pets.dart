import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataPets {
  Future<List<dynamic>> getDataPets() async {
    final resp = await rootBundle.loadString('data/pets.json');
    final Map<String, dynamic> dataMap =
        json.decode(resp) as Map<String, dynamic>;

    return dataMap['pets'];
  }
}

final dataPets = DataPets();
