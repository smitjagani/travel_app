import 'dart:io';
import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:demo_task_smit/services/api_services.dart';
import 'package:hive/hive.dart';

class RouteRepository {
  final ApiServices dataProvider;

  RouteRepository({required this.dataProvider});


  Future<RouteModel> getRoute() async {
    try {
      final routes = await dataProvider.fetchRoute();
      final box = Hive.box<RouteModel>('routesBox');
      box.put('routeList', routes);
      return routes;
    } catch (e) {
      if (e is SocketException || e is HttpException) {
        return getItemsFromHive();
      } else {
        rethrow;
      }
    }
  }

  RouteModel getItemsFromHive() {
    final box = Hive.box<RouteModel>('routesBox');
    return box.get(
      'routeList',
      defaultValue: RouteModel(
        nearby: [],
        popular: [],
      ),
    )!;
  }
}
