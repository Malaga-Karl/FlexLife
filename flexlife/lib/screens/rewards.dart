import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RewardsPage extends StatefulWidget {
  const RewardsPage({super.key});

  @override
  State<RewardsPage> createState() => _RewardsPageState();
}

class _RewardsPageState extends State<RewardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('My Rewards',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'P50,000.00',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'Total Investment Value',
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image(
                        image: NetworkImage(
                            'https://elements-cover-images-0.imgix.net/be1dddca-4efb-453b-9975-36e9ec4a0075?auto=compress%2Cformat&fit=max&w=900&s=e384604c2c90f6d51f4daaeb51c26630'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('15% OFF ON YOUR NEXT CEBU TRIP!',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .merge(TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer))),
                          Text('Discounted fare! lorem ipsum dolor sit amet',
                              style: Theme.of(context).textTheme.bodyMedium),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('900 pts',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .merge(TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimaryContainer))),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                onPressed: null,
                                child: Text('Redeem'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
