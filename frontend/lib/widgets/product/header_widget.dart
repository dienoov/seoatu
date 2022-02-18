import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize {
    return Size.fromHeight(56);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/icon_arrow_back.svg',
          color: Theme.of(context).colorScheme.primary,
        ),
        onPressed: () => Navigator.of(context).pop(),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/icon_shopping_bag.svg',
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () => Navigator.of(context).pop(),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
