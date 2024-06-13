import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageView extends StatelessWidget {
  final String imageUrl;

  final BoxFit fit;

  final double? width;

  final double? height;

  const NetworkImageView(
    this.imageUrl, {
    super.key,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, url) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 200,
        width: 200,
        child: Icon(
          Icons.travel_explore,
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
          size: 50,
        ),
      ),
      errorWidget: (context, url, error) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 200,
          width: 200,
          child: Icon(
            Icons.home_work_outlined,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            size: 50,
          ),
        );
      },
    );
  }
}
