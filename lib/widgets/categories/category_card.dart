import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard(this.category, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed("/meels", arguments: category),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [category.color.withOpacity(0.7), category.color]),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
