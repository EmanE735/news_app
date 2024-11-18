import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/categories/category_item.dart';
import 'package:news_app/models/category_model.dart';

class categoriesGrid extends StatelessWidget {
  const categoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {

    final  categories =List.generate(6,(index)=>
    CategoryModel(id: "$index", color: Colors.red, name: "Sports", imageName: "ball")
    );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
            Padding(padding: EdgeInsets.symmetric(vertical: 24),
            child: Text("pick your category of interest",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppTheme.navy,),
            ),
            ),
        
          Expanded(
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              )
              , itemBuilder: (_,index)=>CategoryItem(
                category: categories[index],
                index: index),
                itemCount: categories.length,
            
              ),
              
          ),
          
        ],
      ),
    );
  }
}