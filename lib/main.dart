import 'package:flutter/material.dart';
import 'package:islamy_application/common/app_theme.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:islamy_application/screens/hadeth_content_screen.dart';
import 'package:islamy_application/screens/home_screen.dart';
import 'package:islamy_application/screens/quraan_verses_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      //i dont understand this part
      themeMode:Provider.of<ThemeProvider>(context).appThemeMode,
      darkTheme: AppTheme.darkTheme,
      routes: {
        HomeScreen.routeName:(_)=>const HomeScreen(),
        QuraanVirsesScreen.routeName:(_)=>const QuraanVirsesScreen(),
        HadethContentScreen.routeName:(_)=>const HadethContentScreen()
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
