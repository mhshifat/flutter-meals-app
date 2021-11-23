import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 120,
            alignment: Alignment.centerLeft,
            child: const Text(
              "DeliMeals",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.restaurant
            ),
            title: const Text("Meals"),
            onTap: () => Navigator.of(context).pushReplacementNamed("/"),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings
            ),
            title: const Text("Settings"),
            onTap: () => Navigator.of(context).pushReplacementNamed("/filters"),
          ),
        ],
      ),
    );
  }
}