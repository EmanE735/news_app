import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/categories/categories-grid.dart';
import 'package:news_app/categories/categories_details.dart';
import 'package:news_app/drawer/home_drawer.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/settings/seeting_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedItem = "categories";
  CategoryModel? selectedCategory = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(
        onItemSelected: onDrawerItemSelected,
      ),
      appBar: AppBar(
        title: Text(selectedCategory != null
            ? selectedCategory!.name
            : selectedItem == "categories"
                ? "News App"
                : "settings"),
        foregroundColor: AppTheme.white,
      ),
      body: selectedCategory != null
          ? CategoriesDetails(categoryId: selectedCategory!.id)
          : selectedItem == "categories"
              ? categoriesGrid(
                  onCategorySelected: onCategorySelected,
                )
              : SettingTab(),
    );
  }

  void onDrawerItemSelected(String item) {
    selectedCategory = null;
    selectedItem = item;
    setState(() {});
    Navigator.of(context).pop();
  }

  void onCategorySelected(CategoryModel category) {
    selectedCategory = category;
    setState(() {});
  }
}
