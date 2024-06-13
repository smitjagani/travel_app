import 'dart:convert';
import 'package:demo_task_smit/config/constant/api_constant.dart';
import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  ApiServices();

  Future<RouteModel> fetchRoute() async {
    final response = await http.get(
      Uri.parse('${ApiConstant.baseUrl}/getRoutes.php'),
      headers: {"Authorization": "Basic dml0ZWNkZXY6TTQ4OnRed1VCZSV5"},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = json.decode(response.body)["data"];
      final routes = RouteModel.fromJson(data);
      return routes;
    } else {
      throw Exception('Failed to load route_view');
    }
  }
}
