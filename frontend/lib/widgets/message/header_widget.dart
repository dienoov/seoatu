import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Messages',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
