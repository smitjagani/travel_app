import 'dart:async';
import 'package:demo_task_smit/config/styles/app_theme.dart';
import 'package:demo_task_smit/features/model/repository/api_repository.dart';
import 'package:demo_task_smit/features/view/route_view/route_list_page.dart';
import 'package:demo_task_smit/features/view_models/route_viewmodel/route_bloc.dart';
import 'package:demo_task_smit/features/view_models/route_viewmodel/route_event.dart';
import 'package:demo_task_smit/services/api_services.dart';
import 'package:demo_task_smit/services/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize Hive
  await HiveService.initHive();

  /// Initialize DataProvider and RouteRepository
  final ApiServices dataProvider = ApiServices();
  final RouteRepository routeRepository = RouteRepository(dataProvider: dataProvider);

  /// run the app
  runApp(MyApp(routeRepository: routeRepository));
}

class MyApp extends StatelessWidget {
  final RouteRepository routeRepository;

  const MyApp({super.key, required this.routeRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(
              1.0,
            ),
          ),
          child: child!,
        );
      },
      home: BlocProvider(
        create: (context) => RouteBloc(routeRepository: routeRepository)..add(FetchRoute()),
        child: const RouteListPage(),
      ),
    );
  }
}
