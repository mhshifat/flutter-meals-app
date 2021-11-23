import 'package:flutter/material.dart';

import '../models/meal.dart';

class MeelDetailsScreen extends StatelessWidget {
  const MeelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(meal.imageUrl),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Ingredients",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: SizedBox(
                height: 100,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 2 / 1),
                  children: meal.ingredients
                      .map((ing) => Container(
                            padding: const EdgeInsets.all(5),
                            decoration:
                                const BoxDecoration(color: Colors.black54),
                            child: Text(ing),
                          ))
                      .toList(),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Text(
                "Steps",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: SizedBox(
                height: 300,
                child: ListView.builder(
                  padding: const EdgeInsets.only(
                    bottom: 20
                  ),
                  itemCount: meal.steps.length,
                  itemBuilder: (_, ind) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text("${ind + 1}"),
                      ),
                      title: Text(meal.steps[ind]),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
