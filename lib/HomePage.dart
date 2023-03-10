import 'package:flutter/material.dart';

import 'Tabs/HomeTab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const <Widget>[
    HomeTab(),
    Text('Categories Page'),
    Text('Search Page'),
    Text('Cart Page'),
    Text('Account Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text("Market"),
          backgroundColor: Colors.green),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: const Icon(Icons.home_filled),
                label: ('Home'),
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
                icon: const Icon(Icons.menu_book_rounded),
                label: ('Menu'),
                backgroundColor: Colors.grey.shade200),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_rounded),
              label: ('Search'),
              backgroundColor: Colors.grey.shade200,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart_checkout),
              label: ('Cart'),
              backgroundColor: Colors.grey.shade200,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: ('Account'),
              backgroundColor: Colors.grey.shade200,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 19, 176, 56),
          unselectedItemColor: Colors.blueGrey.shade200,
          iconSize: 25,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
