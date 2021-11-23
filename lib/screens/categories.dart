import 'package:flutter/material.dart';

import '../widgets/categories/category_list.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CategoryList();
  }
}