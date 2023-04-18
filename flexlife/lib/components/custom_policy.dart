import 'package:flutter/material.dart';

class CustomPolicy extends StatelessWidget {
  const CustomPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Title'),
      subtitle: Text('Policy #20903'),
      trailing: Column(children: [
        Text('P 500,000.00',
            style: Theme.of(context).textTheme.titleMedium!.merge(
                TextStyle(color: Theme.of(context).colorScheme.primary))),
        Text('Sum Assured',
            style: Theme.of(context).textTheme.bodyMedium!.merge(
                TextStyle(color: Theme.of(context).colorScheme.primary))),
      ]),
      shape: RoundedRectangleBorder(
        side:
            BorderSide(color: Theme.of(context).colorScheme.outline, width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
