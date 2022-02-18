import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  Widget header() {
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

  Widget empty() {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nothing to see here!',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Your inbox is empty.',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget message(BuildContext context, String name, String text,
      String datetime, bool read) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/message');
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: 10, bottom: 10, left: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: read
                          ? Colors.grey[600]
                          : Theme.of(context).colorScheme.primary,
                      fontWeight: read ? FontWeight.w400 : FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  datetime,
                  style: TextStyle(
                    color: read
                        ? Colors.grey[600]
                        : Theme.of(context).colorScheme.primary,
                    fontWeight: read ? FontWeight.w400 : FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: read ? Colors.transparent : Colors.black,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget list(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            message(
              context,
              'John Doe',
              'I appreciate your patience with this order. If you have any further questions or concerns, let us know.',
              '10:25 AM',
              false,
            ),
            message(
              context,
              'Rordon Gamsay',
              'What are you? An idiot sandwich.',
              'yesterday',
              true,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        list(context),
      ],
    );
  }
}
