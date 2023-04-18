import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InsurancePage extends StatefulWidget {
  const InsurancePage({super.key});

  @override
  State<InsurancePage> createState() => InsurancePageState();
}

class InsurancePageState extends State<InsurancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Insurance Screen',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
