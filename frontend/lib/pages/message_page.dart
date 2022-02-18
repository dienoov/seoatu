import 'package:flutter/material.dart';
import 'package:seoatu/widgets/message/header_widget.dart';
import 'package:seoatu/widgets/message/list_widget.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(),
        // EmptyWidget(),
        ListWidget(),
      ],
    );
  }
}
