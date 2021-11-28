// ignore_for_file: unused_import, annotate_overrides, prefer_final_fields

import 'package:examen_parcial_1/src/utils/main_menu.dart';
import 'package:examen_parcial_1/src/widgets/servers_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  void initState() {
    super.initState();
  }

  List<String> _options = ["Inicio", "Servidores", "Salir"];

  @override
  Widget build(BuildContext context) {
    //print("2. Visualisacion del widget");
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Examen Primer Parcial - ' + _options[_selectedIndex])),
      body: contentWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _selectedIndex = index;
          setState(() {
            //print("Cambio de estado");
          });
        },
        type: BottomNavigationBarType.fixed,
        items: menuOption
            .map((e) =>
                BottomNavigationBarItem(icon: Icon(e.icon), label: e.label))
            .toList(),
        currentIndex: _selectedIndex,
      ),
    );
  }
}
