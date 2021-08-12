import 'dart:ui';

import 'package:delimeals/screens/category_meals.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.id,
    required this.title,
    required this.color,
  }) : super(key: key);

  final String id;
  final String title;
  final Color color;

  void pushCategoryRecipes(BuildContext ctx) {
    Navigator.of(ctx).push(
        MaterialPageRoute(builder: (_) => CategoryMealsScreen(id, title)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pushCategoryRecipes(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.headline6),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
