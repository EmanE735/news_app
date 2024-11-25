import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class TabItem extends StatelessWidget {
  TabItem({required this.sourceName, required this.isSelected});

  String sourceName;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          color: isSelected ? AppTheme.primary : AppTheme.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2, color: AppTheme.primary)),
      child: Text(
        sourceName,
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: isSelected ? AppTheme.white : AppTheme.primary),
      ),
    );
  }
}
