import 'package:flutter/material.dart';
import 'package:seoatu/widgets/favorite/product_widget.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ProductWidget(),
          ],
        ),
      ),
    );
  }
}
