import 'package:demo_task_smit/config/styles/app_assets.dart';
import 'package:demo_task_smit/config/styles/app_colors.dart';
import 'package:demo_task_smit/features/model/models/route_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as img;
import 'network_image_view.dart';


class RouteCard extends StatelessWidget {
  final Nearby route;

  const RouteCard({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: AppColors.primaryColor,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: NetworkImageView(
                route.images.isNotEmpty ? route.images.first.path : " ",
                fit: BoxFit.cover,
                height: 90,
                width: 90,
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: SizedBox(
                height: 86,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      route.name,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryColor,
                          ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.2),
                              shape: BoxShape.circle,
                            ),
                            child: img.Image.asset(AppAssets.durationIcn),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            route.location.isNotEmpty ? route.location : "-",
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.secondaryColor,
                                ),
                          ),
                          const Spacer(),
                          img.Image.asset(
                            AppAssets.countryIcn,
                            height: 16,
                            width: 16,
                          ),
                          const SizedBox(width: 2),
                          const VerticalDivider(
                            width: 8,
                            indent: 4,
                            endIndent: 4,
                            color: AppColors.secondaryColor,
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 18,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              "${route.averageRating.toString()}/5",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.secondaryColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                img.Image.asset(
                                  AppAssets.clockIcn,
                                  height: 16,
                                  width: 16,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  "${route.duration}m",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.secondaryColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 8,
                            color: AppColors.secondaryColor,
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                img.Image.asset(
                                  AppAssets.walletIcn,
                                  height: 16,
                                  width: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2.0),
                                  child: Text(
                                    "\$${route.price}",
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.secondaryColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            width: 8,
                            color: AppColors.secondaryColor,
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                img.Image.asset(
                                  AppAssets.swapIcn,
                                  height: 16,
                                  width: 16,
                                ),
                                Text(
                                  "${route.distance}km",
                                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.secondaryColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
