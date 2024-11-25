import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/categories/category_item.dart';
import 'package:news_app/models/category_model.dart';

class categoriesGrid extends StatelessWidget {
  categoriesGrid({required this.onCategorySelected});

  void Function(CategoryModel) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryModel(id: 'business', color: Colors.red, name: 'Sports', imageName: 'sports'),
      CategoryModel(id: 'business', color: Colors.red, name: 'Business', imageName: 'sports'),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "pick your category of interest",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppTheme.navy,
                  ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
              ),
              itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  onCategorySelected(categories[index]);
                },
                child: CategoryItem(category: categories[index], index: index),
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
