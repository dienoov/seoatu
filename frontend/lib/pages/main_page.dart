import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seoatu/pages/favorite_page.dart';
import 'package:seoatu/pages/home_page.dart';
import 'package:seoatu/pages/message_page.dart';
import 'package:seoatu/pages/profile_page.dart';
import 'package:seoatu/pages/shopping_bag_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List _pageOptions = [
    HomePage(),
    MessagePage(),
    ShoppingBagPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget navbar() {
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
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navbar(),
      body: _pageOptions[_selectedIndex],
    );
  }
}
