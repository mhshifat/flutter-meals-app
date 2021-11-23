import 'package:flutter/material.dart';

import '../widgets/drawers.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text("Filters Screen"),
      ),
    );
  }
}
