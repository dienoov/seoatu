import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Profile',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
