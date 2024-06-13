import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static Future<void> initHive() async {
    await Hive.initFlutter();
    // Register adapters for all your Hive model classes
    Hive.registerAdapter(RouteModelAdapter());
    Hive.registerAdapter(AudioAdapter());
    Hive.registerAdapter(AuthorAdapter());
    Hive.registerAdapter(GeoposAdapter());
    Hive.registerAdapter(ImageAdapter());
    Hive.registerAdapter(LevelAdapter());
    Hive.registerAdapter(NearbyAdapter());
    Hive.registerAdapter(StepAdapter());
    Hive.registerAdapter(TravelmethodAdapter());
    // Open the box for your RouteModel
    await Hive.openBox<RouteModel>('routesBox');
  }
}
