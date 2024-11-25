import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({required this.index, required this.category});

  int index;
  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(25),
              topEnd: Radius.circular(25),
              bottomEnd: Radius.circular(index.isOdd ? 25 : 0),
              bottomStart: Radius.circular(index.isEven ? 25 : 0)),
          color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/${category.imageName}.png"),
          Text(
            category.name,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
