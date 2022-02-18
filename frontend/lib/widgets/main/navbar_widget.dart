import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({
    Key? key,
    @required this.onTap,
    this.index = 0,
  }) : super(key: key);

  final void Function(int)? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/icon_home.svg',
            color: Colors.grey[600],
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/icon_home.svg',
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/icon_message.svg',
            color: Colors.grey[600],
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/icon_message.svg',
            color: Colors.white,
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/icon_shopping_bag.svg',
            color: Colors.grey[600],
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/icon_shopping_bag.svg',
            color: Colors.white,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/icon_favorite.svg',
            color: Colors.grey[600],
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/icon_favorite.svg',
            color: Colors.white,
          ),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/icon_person.svg',
            color: Colors.grey[600],
          ),
          activeIcon: SvgPicture.asset(
            'assets/icons/icon_person.svg',
            color: Colors.white,
          ),
          label: 'Profile',
        ),
      ],
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: index,
      onTap: onTap,
    );
  }
}
