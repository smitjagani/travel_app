import 'package:demo_task_smit/config/widgets/app_bar.dart';
import 'package:demo_task_smit/config/widgets/load_more_button.dart';
import 'package:demo_task_smit/config/widgets/route_list_view.dart';
import 'package:demo_task_smit/features/view_models/route_viewmodel/route_bloc.dart';
import 'package:demo_task_smit/features/view_models/route_viewmodel/route_event.dart';
import 'package:demo_task_smit/features/view_models/route_viewmodel/route_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteListPage extends StatelessWidget {

  const RouteListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppTitle(
        title: 'Explore routes',
      ),
      body: BlocBuilder<RouteBloc, RouteState>(
        builder: (context, state) {
          if (state is RouteLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          else if (state is RouteLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    RouteListWidget(routes: state.nearRoutes, text1: "Routes ", text2: "nearby"),
                    if ((state.nearRoutes.length > state.popularRoutes.length) ||
                        (state.hasMoreNear))
                      LoadMoreButton(onTap: () {
                        BlocProvider.of<RouteBloc>(context).add(FetchMoreRoute());
                      }),
                    const SizedBox(height: 20),
                    RouteListWidget(
                        routes: state.popularRoutes,
                        isPopular: true,
                        text1: "Favourite ",
                        text2: "Tours"),
                    if ((state.nearRoutes.length < state.popularRoutes.length) &&
                        (state.hasMorePopular))
                      LoadMoreButton(onTap: () {
                        BlocProvider.of<RouteBloc>(context).add(
                          FetchMoreRoute(),
                        );
                      }),
                  ],
                ),
              ),
            );
          } else if (state is RouteError) {
            return Center(
              child: Text(
                'Something went wrong! Please try again.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          }
          return Center(
            child: Text(
              'Press the button to fetch routes.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          );
        },
      ),
    );
  }
}
