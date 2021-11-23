import 'package:flutter/material.dart';

import '../../models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard(this.meal, {Key? key}) : super(key: key);

  get getComplexity {
    switch (meal.complexity) {
      case Complexity.Simple:
        return "Simple";
      case Complexity.Challenging:
        return "Challenging";
      case Complexity.Hard:
        return "Hard";
      default:
        return "Unknown";
    }
  }

  get getAffordability {
    switch (meal.affordability) {
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Pricey:
        return "Pricey";
      case Affordability.Luxurious:
        return "Luxurious";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed("/meel_details", arguments: meal),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),	
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10
                    ),
                    child: Text(
                      meal.title,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Quicksand",
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 4,
                      ),
                      Text("${meal.duration} min"),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.work),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(getComplexity),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.attach_money),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(getAffordability),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
