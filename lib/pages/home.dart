import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = body = HomePage();
    } else {
      body = HomePage();
    }
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'home',
            ),
          ]),
      body: body,
    );
  }
}
