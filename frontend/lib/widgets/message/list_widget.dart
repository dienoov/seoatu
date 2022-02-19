import 'package:flutter/material.dart';

import 'message_widget.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 10),
          children: [
            MessageWidget(
              name: 'John Doe',
              text:
                  'I appreciate your patience with this order. If you have any further questions or concerns, let us know.',
              datetime: '10:25 AM',
              read: false,
            ),
            MessageWidget(
              name: 'Rordon Gamsay',
              text: 'What are you? An idiot sandwich.',
              datetime: 'yesterday',
              read: true,
            ),
          ],
        ),
      ),
    );
  }
}
