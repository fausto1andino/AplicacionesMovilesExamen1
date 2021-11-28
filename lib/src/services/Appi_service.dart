// ignore_for_file: file_names, unused_import

import 'dart:convert';

import 'package:examen_parcial_1/src/models/Servicios_Model.dart';
import 'package:http/http.dart' as http;
import 'package:examen_parcial_1/src/utils/main_menu.dart';

class AppiService {
  AppiService();

  final String _rootUrl =
      'https://new-world-server-status.p.rapidapi.com/servers';

  Future<List<ServiciosApp>> getAppServicio() async {
    List<ServiciosApp> result = [];
    try {
      var url = Uri.parse(_rootUrl);
      var headers = {
        "x-rapidapi-host": "new-world-server-status.p.rapidapi.com",
        "x-rapidapi-key": "0abfe051b7mshcfe7355b2b2a7a7p1ae356jsnba6e6e32ee85"
      };
      final response = await http.get(url, headers: headers);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        final serviciosApp = ServiciosApp.fromJson(item);
        result.add(serviciosApp);
      }
      return result;
    } catch (ex) {
      return result;
    }
  }
}
