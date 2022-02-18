import 'package:flutter/material.dart';
import 'package:seoatu/widgets/message_single/bubble_widget.dart';
import 'package:seoatu/widgets/message_single/header_widget.dart';
import 'package:seoatu/widgets/message_single/input_widget.dart';
import 'package:seoatu/widgets/message_single/product_bubble_widget.dart';

class MessageSinglePage extends StatelessWidget {
  const MessageSinglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ProductBubbleWidget(),
          BubbleWidget(message: 'Is this still available?', sender: true),
          BubbleWidget(message: 'No.'),
        ],
      ),
      bottomSheet: InputWidget(),
    );
  }
}
