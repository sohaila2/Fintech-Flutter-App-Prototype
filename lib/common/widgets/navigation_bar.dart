import 'package:flutter/material.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const CustomBottomNavigationBar({super.key,
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // backgroundColor: Color(0xfff3d6a2), // First color
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
            label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
            label: 'Wallet'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
            label: 'Statistics'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
            label: 'Profile'
        ),
      ],
      currentIndex: currentIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.black,
      onTap: onTabTapped,
    );
  }
}
