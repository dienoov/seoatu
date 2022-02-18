import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({
    Key? key,
    this.name = '',
    this.datetime = '',
    this.text = '',
    this.read = false,
  }) : super(key: key);

  final String name;
  final String datetime;
  final String text;
  final bool read;

  @override
  Widget build(BuildContext context) {
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
}
