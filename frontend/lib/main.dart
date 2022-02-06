import 'package:flutter/material.dart';
import 'package:seoatu/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Averta',
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          secondary: Colors.white,
        ),
      ),
      routes: {
        '/': (context) => const MainPage(),
      },
    );
  }
}
