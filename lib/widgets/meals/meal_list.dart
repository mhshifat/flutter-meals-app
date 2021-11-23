import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../../widgets/meals/meal_card.dart';

class MealList extends StatelessWidget {
  const MealList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DUMMY_MEALS.length,
      itemBuilder: (_, ind) => MealCard(DUMMY_MEALS[ind]),
      padding: const EdgeInsets.all(10),
    );
  }
}
