import 'package:flutter/material.dart';
import 'package:mukarrom/pages/home_page.dart';
import 'package:mukarrom/pages/login_page.dart';
import 'package:mukarrom/utils/routes.dart';
import 'package:mukarrom/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // hide debug show in corner 
      debugShowCheckedModeBanner: false,
      // home: const Home(),
      // => Use light and dark them
      themeMode: ThemeMode.light,
      // => property for light theme
      theme: MyTheme.lightTheme(context),
      // => property for dark theme
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=> const LoginPage(),
        MyRoutes.homeRoute:(context) =>  const Home(),
        MyRoutes.loginRoute:(context)=> const LoginPage()
      },
    );
  }
}
