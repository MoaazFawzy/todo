import 'package:flutter/material.dart';
import 'package:todo/home_layout/home_layout.dart';
import 'package:todo/shared/styles/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routName,
      routes: {
        HomeLayout.routName: (context) => HomeLayout(),
      },
      themeMode: ThemeMode.light,
      theme: MyThemeData.lightTheme,
    );
  }
}
