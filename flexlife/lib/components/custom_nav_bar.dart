import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentPageIndex,
    required this.onDestinationSelected,
  });

  final int currentPageIndex;
  final void Function(int) onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: onDestinationSelected,
      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.wallet),
          icon: Icon(Icons.wallet_outlined),
          label: 'Insurance',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.star),
          icon: Icon(Icons.star_border_outlined),
          label: 'Rewards',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.school),
          icon: Icon(Icons.school_outlined),
          label: 'Courses',
        ),
      ],
    );
  }
}
