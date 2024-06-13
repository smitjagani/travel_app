import 'package:equatable/equatable.dart';

abstract class RouteEvent extends Equatable {
  const RouteEvent();

  @override
  List<Object> get props => [];
}

class FetchRoute extends RouteEvent {}

class FetchMoreRoute extends RouteEvent {}
