import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({
    Key? key,
    required this.addToCart,
  }) : super(key: key);

  final VoidCallback addToCart;

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  bool favorite = false;

  void favoriteOnPressed() {
    setState(() {
      favorite = !favorite;
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        favorite
            ? 'Product added to favorite'
            : 'Product removed from favorite',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Averta',
          color: favorite
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
        ),
      ),
      backgroundColor:
          favorite ? Theme.of(context).colorScheme.primary : Colors.grey[200],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/icon_message.svg'),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () => Navigator.of(context).pushNamed('/message'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: favorite
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey[200],
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/icon_favorite.svg',
                color: favorite
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
              ),
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: favoriteOnPressed,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.primary),
                padding: MaterialStateProperty.all(EdgeInsets.all(19)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              onPressed: widget.addToCart,
            ),
          ),
        ],
      ),
    );
  }
}
