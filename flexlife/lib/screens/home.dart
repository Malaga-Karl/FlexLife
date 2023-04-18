import 'package:flexlife/components/custom_nav_bar.dart';
import 'package:flexlife/screens/rewards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'course.dart';
import 'insurance.dart';
import 'mainscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://guyrothblum.files.wordpress.com/2014/11/guy_rothblum_square.jpg'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        currentPageIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
      ),
      body: <Widget>[
        HomeScreen(),
        InsurancePage(),
        RewardsPage(),
        CoursePage(),
      ][_selectedIndex],
    );
  }
}
