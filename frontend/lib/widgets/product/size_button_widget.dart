import 'package:flutter/material.dart';

class SizeButtonWidget extends StatefulWidget {
  const SizeButtonWidget({
    Key? key,
    this.size = '40',
    this.index = 0,
  }) : super(key: key);

  final String size;
  final int index;

  @override
  State<SizeButtonWidget> createState() => _SizeButtonWidgetState();
}

class _SizeButtonWidgetState extends State<SizeButtonWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    // debugPrint(widget.index.toString());
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Container(
        width: 56,
        height: 56,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.size,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
