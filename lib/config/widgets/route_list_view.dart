import 'package:demo_task_smit/config/styles/app_colors.dart';
import 'package:demo_task_smit/config/widgets/route_card.dart';
import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:flutter/material.dart';

class RouteListWidget extends StatelessWidget {
  final List<Nearby> routes;
  final bool isPopular;
  final String text1;
  final String text2;

  const RouteListWidget({
    super.key,
    required this.routes,
    this.isPopular = false,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text.rich(
            TextSpan(
              text: text1,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: isPopular ? AppColors.primaryColor : Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
              children: [
                TextSpan(
                  text: text2,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: isPopular ? Colors.black : AppColors.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                )
              ],
            ),
          ),
        ),
        routes.isNotEmpty
            ? ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: routes.length,
                itemBuilder: (context, index) {
                  final route = routes[index];
                  return RouteCard(route: route);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                })
            : Center(
                child: Text(
                  'No routes available!',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
      ],
    );
  }
}
