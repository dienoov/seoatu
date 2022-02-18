import 'package:flutter/material.dart';
import 'package:seoatu/pages/favorite_page.dart';
import 'package:seoatu/pages/home_page.dart';
import 'package:seoatu/pages/message_page.dart';
import 'package:seoatu/pages/profile_page.dart';
import 'package:seoatu/pages/shopping_bag_page.dart';
import 'package:seoatu/widgets/main/navbar_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  static const _pageOptions = [
    HomePage(),
    MessagePage(),
    ShoppingBagPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavbarWidget(
        index: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: _pageOptions,
        ),
      ),
    );
  }
}
