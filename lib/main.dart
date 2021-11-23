import "package:flutter/material.dart";

import './screens/filters.dart';
import './screens/meal_details.dart';
import './screens/meels.dart';
import './screens/tabs.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DeliMeals",
      routes: {
        "/": (_) => const TabsScreen(),
        "/meels": (_) => const MeelsScreen(),
        "/meel_details": (_) => const MeelDetailsScreen(),
        "/filters": (_) => const FiltersScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: const Color.fromRGBO(242, 245, 247, 1),
        fontFamily: "OpenSans",
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 17,
            fontWeight: FontWeight.bold,
          )
        )
      ),
    );
  }
}
