import 'package:flutter/material.dart';
import 'package:seoatu/widgets/favorite/header_widget.dart';
import 'package:seoatu/widgets/favorite/list_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeaderWidget(),
          // EmptyWidget(),
          ListWidget(),
        ],
      ),
    );
  }
}
