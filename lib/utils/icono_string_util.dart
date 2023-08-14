import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'pets': Icons.pets,
  'phone': Icons.phone_android_rounded,
  'pc': Icons.computer_outlined,
  'tv': Icons.tv,
  'game': Icons.games_outlined
};

Icon getIcon(String nameIcon) {
  return Icon(_icons[nameIcon], color: Colors.cyanAccent[400]);
}
