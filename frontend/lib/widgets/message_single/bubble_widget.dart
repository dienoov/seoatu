import 'package:flutter/material.dart';

class BubbleWidget extends StatelessWidget {
  const BubbleWidget({
    Key? key,
    this.sender = false,
    this.message = '',
  }) : super(key: key);

  final bool sender;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment:
            sender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .8,
              ),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: sender
                    ? Colors.grey[200]
                    : Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(message,
                  style: TextStyle(
                    color: sender
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
