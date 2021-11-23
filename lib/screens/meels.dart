import 'package:flutter/material.dart';

import '../models/category.dart';
import '../widgets/meals/meal_list.dart';

class MeelsScreen extends StatelessWidget {
  const MeelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const MealList(),
    );
  }
}
