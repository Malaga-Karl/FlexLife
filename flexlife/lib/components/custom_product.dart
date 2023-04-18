import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  final String productTitle;
  final Icon productIcon;
  const CustomProduct({
    required this.productTitle,
    required this.productIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 118,
      width: 88,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xffF0FFDD)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              productIcon,
              Text(
                productTitle,
                style: TextStyle(fontSize: 8),
              ),
            ],
          )),
    );
  }
}
