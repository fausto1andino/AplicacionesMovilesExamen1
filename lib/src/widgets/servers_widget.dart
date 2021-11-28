// ignore_for_file: unused_import, camel_case_types, annotate_overrides, prefer_const_constructors, avoid_print

import 'package:examen_parcial_1/src/models/Servicios_Model.dart';
import 'package:examen_parcial_1/src/services/Appi_service.dart';
import 'package:examen_parcial_1/src/utils/main_menu.dart';
import 'package:flutter/material.dart';

class ServersWidget extends StatefulWidget {
  const ServersWidget({Key? key}) : super(key: key);

  @override
  State<ServersWidget> createState() => _ServersWidgetState();
}

class _ServersWidgetState extends State<ServersWidget> {
  final AppiService _serviciosApp = AppiService();
  List<ServiciosApp>? _listaServiciosApp;

  @override
  @override
  void initState() {
    super.initState();
    _downloadAppServicios();
  }

  Widget build(BuildContext context) {
    return _listaServiciosApp == null ? 
        const Center(
        child: SizedBox(
              height: 50.0, 
              width: 50.0, 
              child: CircularProgressIndicator() 
        )):
        _listaServiciosApp!.isEmpty ?
        const Center(
        child: SizedBox(
              child: Text("No Hay Infomracion en los Servidores") 
        )):
        Container(
        margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 14.0),
        child: Expanded(
            child: ListView(
          children: _listaServiciosApp!.map((e) {
            final prioridad = Container(
                height: 32.0,
                width: 32.0,
                color: e.ServerStatus == "Online" 
                        ? Colors.green : e.ServerStatus == "Offline" 
                        ? Colors.red : e.ServerStatus == "Maintenance"
                        ? Colors.blue : Colors.black,
                child: const Icon(Icons.check, color: Colors.white));
           
            return Card(
              elevation: 7.0,
              child: ListTile(
                leading: const Icon(Icons.yard),
                title: Text(e.ServerName ?? ""),
                subtitle: Text(e.id ?? ""),
                trailing: e.ServerStatus == null || e.ServerStatus == "" ? null: prioridad
              ),
            );
          }).toList(),
        )));
  }

  _downloadAppServicios() async {
      _listaServiciosApp = await _serviciosApp.getAppServicio();
      setState(() {});
  }
}
