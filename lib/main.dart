import 'package:flutter/material.dart';
import 'package:islamy_application/common/app_theme.dart';
//import 'package:islamy_application/user_preference.dart';
import 'package:provider/provider.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:islamy_application/screens/hadeth_content_screen.dart';
import 'package:islamy_application/screens/home_screen.dart';
import 'package:islamy_application/screens/quraan_verses_screen.dart';
//import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
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
      themeMode: Provider.of<ThemeProvider>(context).appThemeMode,
      darkTheme: AppTheme.darkTheme,
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        QuraanVirsesScreen.routeName: (_) => const QuraanVirsesScreen(),
        HadethContentScreen.routeName: (_) => const HadethContentScreen()
      },
      localizationsDelegates: const [
        AppLocalizations.delegate, 
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
       supportedLocales: const [
    Locale('en', ''), // English, no country code
    Locale('ar', ''), // Arabic, no country code
  ],
      locale: Locale (Provider.of<ThemeProvider>(context).language),
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
