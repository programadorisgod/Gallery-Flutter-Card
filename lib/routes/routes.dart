import 'package:flutter/material.dart';

import 'package:practica1/pages/home_page.dart';
import 'package:practica1/pages/movil_page.dart';
import 'package:practica1/pages/pc_page.dart';
import 'package:practica1/pages/pets_card.dart';
import 'package:practica1/pages/tv_page.dart';
import 'package:practica1/pages/games_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'movils': (BuildContext context) => const MovilPage(),
    'tv': (BuildContext context) => const TvCard(),
    'games': (BuildContext context) => const GamesPage(),
    'pc': (BuildContext context) => const PcPage(),
    'pets': (BuildContext context) => const PetsPage()
  };
}
