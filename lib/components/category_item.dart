import 'package:flutter/material.dart';
import 'package:navegacao_multitelas_meals/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.category});

  final Category? category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            category!.color.withValues(alpha: 0.5),
            category!.color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Text(
        category!.title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
