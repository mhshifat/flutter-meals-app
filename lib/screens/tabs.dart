import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './categories.dart';
import './favourite.dart';
import '../widgets/drawers.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<TabsScreen> {
  var _selectedTab = 0;
  final List<Map<String, Object>> _pages = [
    {
      "title": "Categories",
      "page": const CategoriesScreen(),
    },
    {
      "title": "Fivourites",
      "page": const FavouriteScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedTab]["title"] as String),
      ),
      drawer: const AppDrawer(),
      body: _pages[_selectedTab]["page"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onTap: (ind) => setState(() {
          _selectedTab = ind;
        }),
        selectedItemColor: Colors.white,
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Fivourites",
          ),
        ],
      ),
    );
  }
}
