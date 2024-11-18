import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/categories/categories-grid.dart';
import 'package:news_app/drawer/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName="/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
        
      
      appBar: AppBar(
        title: Text("News App"),
        foregroundColor: AppTheme.white,
      ),
      body: categoriesGrid(),
        
      
    );
  }
}