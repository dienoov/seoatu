import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize {
    return Size.fromHeight(56);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'John Doe',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/icon_arrow_back.svg',
          color: Theme.of(context).colorScheme.secondary,
        ),
        onPressed: () => Navigator.of(context).pop(),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
    );
  }
}
