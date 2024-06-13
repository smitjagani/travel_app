import 'package:demo_task_smit/features/model/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'route_event.dart';
import 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  final RouteRepository routeRepository;
  int _nearIndex = 0;
  int _popularIndex = 0;

  RouteBloc({required this.routeRepository}) : super(RouteInitial()) {
    on<FetchRoute>(_onFetchRoute);
    on<FetchMoreRoute>(_onFetchMoreRoute);
  }

  void _onFetchRoute(FetchRoute event, Emitter<RouteState> emit) async {
    emit(RouteLoading());
    try {
      final items = await routeRepository.getRoute();
      _nearIndex = 2;
      _popularIndex = 2;
      emit(RouteLoaded(
        items.nearby.take(2).toList(),
        items.popular.take(2).toList(),
        items.nearby.length > 2,
        items.popular.length > 2,
      ));
    } catch (e) {
      emit(RouteError(e.toString()));
    }
  }

  void _onFetchMoreRoute(FetchMoreRoute event, Emitter<RouteState> emit) async {
    try {
      final items = routeRepository.getItemsFromHive();
      final newNearIndex = _nearIndex + 2;
      final newPopularIndex = _popularIndex + 2;
      _nearIndex = newNearIndex > items.nearby.length
          ? items.nearby.length
          : newNearIndex;
      _popularIndex = newPopularIndex > items.popular.length
          ? items.popular.length
          : newPopularIndex;

      emit(RouteLoaded(
        items.nearby.take(_nearIndex).toList(),
        items.popular.take(_popularIndex).toList(),
        items.nearby.length > _nearIndex,
        items.popular.length > _popularIndex,
      ));
    } catch (e) {
      emit(RouteError(e.toString()));
    }
  }
}
