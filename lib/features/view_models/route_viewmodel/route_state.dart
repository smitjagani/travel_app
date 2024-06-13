import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:equatable/equatable.dart';

abstract class RouteState extends Equatable {
  const RouteState();

  @override
  List<Object> get props => [];
}

class RouteInitial extends RouteState {}

class RouteLoading extends RouteState {}

class RouteLoaded extends RouteState {
  final List<Nearby> nearRoutes;
  final List<Nearby> popularRoutes;
  final bool hasMoreNear;
  final bool hasMorePopular;

  const RouteLoaded(this.nearRoutes, this.popularRoutes, this.hasMoreNear,
      this.hasMorePopular);

  @override
  List<Object> get props =>
      [nearRoutes, popularRoutes, hasMoreNear, hasMorePopular];
}

class RouteError extends RouteState {
  final String message;

  const RouteError(this.message);

  @override
  List<Object> get props => [message];
}
