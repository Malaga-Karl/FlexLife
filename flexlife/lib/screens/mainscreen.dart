import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/custom_policy.dart';
import '../components/custom_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Investment', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('P50,000.00',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text('Total Investment Value',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('My Policies', style: Theme.of(context).textTheme.titleLarge),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CustomPolicy(),
                    SizedBox(
                      height: 10,
                    )
                  ],
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    ));
  }
}
