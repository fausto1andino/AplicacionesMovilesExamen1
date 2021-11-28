// To parse this JSON data, do
//
//     final serviciosApp = serviciosAppFromJson(jsonString);
// ignore_for_file: file_names
import 'dart:convert';

ServiciosApp serviciosAppFromJson(String str) =>
    ServiciosApp.fromJson(json.decode(str));

String serviciosAppToJson(ServiciosApp data) => json.encode(data.toJson());

class ServiciosApp {
  ServiciosApp({
    this.id,
    this.ServerName,
    this.ServerStatus,
  });

  String? id;
  String? ServerName;
  String? ServerStatus;

  factory ServiciosApp.fromJson(Map<String, dynamic> json) => ServiciosApp(
        id: json["id"],
        ServerName: json["ServerName"],
        ServerStatus: json["ServerStatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ServerName": ServerName,
        "ServerStatus": ServerStatus,
      };
}
