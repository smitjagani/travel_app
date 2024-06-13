// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget implements PreferredSizeWidget {
  AppTitle({
    super.key,
    required this.title,
    this.centerTitle,
    this.onTap,
    this.color,
  });

  final String title;
  final bool? centerTitle;
  final Color? color;
  void Function()? onTap;

  // Build method to create the widget
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
      child: AppBar(
        toolbarHeight: preferredSize.height,
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        centerTitle: centerTitle ?? false,
        surfaceTintColor: Colors.transparent,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  /// Specify the preferred size of the app bar
  @override
  Size get preferredSize => const Size.fromHeight(65);
}
