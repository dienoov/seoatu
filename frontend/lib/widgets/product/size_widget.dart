import 'package:flutter/material.dart';
import 'package:seoatu/widgets/product/size_button_widget.dart';

class SizeWidget extends StatelessWidget {
  const SizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'Size Guide',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              SizeButtonWidget(size: '40'),
              SizeButtonWidget(size: '41'),
              SizeButtonWidget(size: '42'),
              SizeButtonWidget(size: '43'),
              SizeButtonWidget(size: '44'),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
