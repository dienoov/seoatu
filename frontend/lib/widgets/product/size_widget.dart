import 'package:flutter/material.dart';
import 'package:seoatu/widgets/product/size_button_widget.dart';

class SizeWidget extends StatefulWidget {
  const SizeWidget({Key? key}) : super(key: key);

  @override
  State<SizeWidget> createState() => _SizeWidgetState();
}

class _SizeWidgetState extends State<SizeWidget> {
  final List sizes = ['39', '40', '41', '42', '43', '44', '45'];

  final List sizeWidgets = [];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < sizes.length; i++) {
      setState(() {
        sizeWidgets.add(SizeButtonWidget(size: sizes[i], index: i));
      });
    }

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
              ...sizeWidgets,
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
