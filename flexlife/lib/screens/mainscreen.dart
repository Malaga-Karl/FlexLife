import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../components/custom_product.dart';

List<CustomProduct> productList = [
  CustomProduct(
    productTitle: "Life",
    productIcon: Icon(Icons.handshake_outlined),
  ),
  CustomProduct(
    productTitle: "Health",
    productIcon: Icon(Icons.health_and_safety_outlined),
  ),
  CustomProduct(
    productTitle: "Personal",
    productIcon: Icon(Icons.person_outline),
  ),
  CustomProduct(
    productTitle: "Education",
    productIcon: Icon(Icons.school_outlined),
  ),
  CustomProduct(
    productTitle: "Travel",
    productIcon: Icon(Icons.flight),
  ),
  CustomProduct(
    productTitle: "Vehicle",
    productIcon: Icon(Icons.local_taxi),
  ),
  CustomProduct(
    productTitle: "Property",
    productIcon: Icon(Icons.location_city),
  ),
  CustomProduct(
    productTitle: "Business",
    productIcon: Icon(Icons.attach_money),
  ),
];

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Material(
              borderRadius: BorderRadius.circular(50),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Theme.of(context).colorScheme.surfaceVariant,
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Insurance',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                      ),
                      const Icon(Icons.search),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Categories',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.7,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) => productList[index],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
