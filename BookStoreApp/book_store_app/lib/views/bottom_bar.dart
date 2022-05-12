import 'package:flutter/material.dart';
import './home_page.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int currentIndex = 0;
  List<Widget> menu = [
    const HomePage(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: menu,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.8),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.bookmark)),
            BottomNavigationBarItem(label: "", icon: Icon(Icons.shopping_bag)),
            BottomNavigationBarItem(
                label: "", icon: Icon(Icons.slideshow_outlined)),
          ],
        ),
      ),
    );
  }
}
