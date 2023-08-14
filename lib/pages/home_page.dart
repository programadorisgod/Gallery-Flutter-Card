import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:practica1/providers/menu_provider.dart';
import 'package:practica1/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gallery Dynamic')),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
        future: menuHome.loadOptions(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            EasyLoading.show(status: 'Cargando...');
            return Container();
          } else if (snapshot.hasError) {
            return Text('Erro: ${snapshot.error}');
          } else {
            EasyLoading.dismiss();
            return ListView(children: _listItems(snapshot.data ?? [], context));
          }
        });
  }

  List<Widget> _listItems(List data, BuildContext context) {
    return data.map<Widget>((dynamic item) {
      final Map<String, dynamic> opt = item as Map<String, dynamic>;

      return Column(
        children: [
          ListTile(
            title: Text(opt['title'] as String),
            //subtitle: Text(opt['subtitle'] as String),
            leading: getIcon(opt['icon'] as String),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.pushNamed(context, opt['ruta'] as String);
            },
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
