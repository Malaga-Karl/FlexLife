import 'package:flutter/material.dart';

class CustomCourseItem extends StatelessWidget {
  const CustomCourseItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey)),
      width: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16)),
            child: Image(
              image: NetworkImage(
                  'https://www.theforage.com/blog/wp-content/uploads/2022/11/life-insurance-good-career-path.jpg'),
            ),
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://www.theforage.com/blog/wp-content/uploads/2022/11/life-insurance-good-career-path.jpg'),
          // ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Insurance 101',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Learn the basics of insurance. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(
                  height: 21,
                ),
                LinearProgressIndicator(
                  minHeight: 14,
                  value: 0.3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
