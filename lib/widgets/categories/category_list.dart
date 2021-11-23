import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../../widgets/categories/category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((cat) => CategoryCard(cat)).toList(),
    );
  }
}