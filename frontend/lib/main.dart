import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seoatu/pages/main_page.dart';
import 'package:seoatu/pages/message_single_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  SlideTransition _transitionsBuilder(
      context, animation, secondaryAnimation, child) {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.ease;

    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return SlideTransition(
      position: animation.drive(tween),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Averta',
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.black,
          displayColor: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          titleTextStyle: TextStyle(
            color: Colors.grey[50],
            fontFamily: 'Averta',
            fontSize: 18,
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.grey[50],
        ),
        scaffoldBackgroundColor: Colors.grey[50],
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.grey[50],
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageRouteBuilder(
              pageBuilder: (context, _, __) => MainPage(),
              transitionsBuilder: _transitionsBuilder,
            );
          case '/message':
            return PageRouteBuilder(
              pageBuilder: (context, _, __) => MessageSinglePage(),
              transitionsBuilder: _transitionsBuilder,
            );
        }
      },
    );
  }
}
