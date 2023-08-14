import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataGames {
  
  Future<List<dynamic>> getDataGames() async {
    final response = await rootBundle.loadString('data/games.json');

    final Map<String, dynamic> dataMap =
        json.decode(response) as Map<String, dynamic>;

    return dataMap['games'] as List<dynamic>;
  }
}

final dataGames = DataGames();
