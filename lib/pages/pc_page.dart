import 'package:flutter/material.dart';
import 'package:practica1/providers/menu_pc.dart';
import 'package:practica1/utils/card_util.dart';

class PcPage extends StatelessWidget {
  const PcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('PCs'),
          titleTextStyle: TextStyle(fontFamily: AutofillHints.countryCode)),
      body: _list(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }

  _list() {
    return FutureBuilder(
        future: dataPcs.getDataPc(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(children: _listItems(snapshot.data ?? [], context));
        });
  }

  _listItems(List data, BuildContext context) {
    return data.map((dynamic item) {
      final Map<String, dynamic> opt = item as Map<String, dynamic>;
      final url = opt['url'] as String;
      final description = opt['description'] as String;
      final name = opt['name'] as String;

      return Column(children: card(url, description, name));
    }).toList();
  }
}
