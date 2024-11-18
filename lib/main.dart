import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/home.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
        
      },
      initialRoute: HomeScreen.routeName,
          theme: AppTheme.lighttheme,
      //darkTheme:AppTheme.darktheme ,
      themeMode: ThemeMode.light,
   
        );
  
  }
}
