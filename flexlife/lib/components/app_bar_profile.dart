import 'package:flutter/material.dart';

import 'circle_image_button.dart';

class AppBarWithProfile extends AppBar {
  AppBarWithProfile()
      : super(
          leading: CircleImageButton(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png"),
            onTap: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              tooltip: 'Settings',
            ),
          ],
        );
}
