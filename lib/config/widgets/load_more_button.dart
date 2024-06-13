import 'package:demo_task_smit/config/styles/app_colors.dart';
import 'package:flutter/material.dart';

class LoadMoreButton extends StatelessWidget {
  final VoidCallback? onTap;

  const LoadMoreButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 14),
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'Load More',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.primaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}
