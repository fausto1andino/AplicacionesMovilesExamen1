import 'package:examen_parcial_1/src/models/Servicios_Model.dart';
import 'package:examen_parcial_1/src/widgets/Materiales_Widget.dart';
import 'package:examen_parcial_1/src/widgets/inicio_widget.dart';
import 'package:examen_parcial_1/src/widgets/servers_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuItem{
  String label;
  IconData icon;

  MenuItem(this.label, this.icon);

}



List<MenuItem> menuOption = [
  MenuItem("Inicio", Icons.home),
  MenuItem("Servidores", Icons.self_improvement_rounded),
  MenuItem("Materiales", Icons.cable),

];

List<Widget> contentWidgets = [
  const InicioWidget(),
  const ServersWidget(),
  const materialesWidget()
];

List<ServiciosApp> ejemploServiciosAPP = [
ServiciosApp(id: "Cocina",ServerName: "Ninguna",ServerStatus: "Latacunga"),

ServiciosApp(id: "Pepe",ServerName: "Ninguna",ServerStatus: "Ambato"),

ServiciosApp(id: "Carlos",ServerName: "Ninguna",ServerStatus: "Latacunga"),

ServiciosApp(id: "Juan",ServerName: "Ninguna",ServerStatus: "Ambato"),

ServiciosApp(id: "Diego",ServerName: "Ninguna",ServerStatus: "Latacunga"),

ServiciosApp(id: "Diego",ServerName: "Ninguna",ServerStatus: "Ambato"),

ServiciosApp(id: "Diego",ServerName: "Ninguna",ServerStatus: ""),

ServiciosApp(id: "Diego",ServerName: "Ninguna",ServerStatus: "Ambato"),

ServiciosApp(id: "Diego",ServerName: "Ninguna",ServerStatus: "Latacunga"),
];
