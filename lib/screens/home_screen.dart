import 'package:flutter/material.dart';
import 'package:islamy_application/common/images_names.dart';
import 'package:islamy_application/pages/hadeth_screen.dart';
import 'package:islamy_application/pages/quarn_screen.dart';
import 'package:islamy_application/pages/radio_screen.dart';
import 'package:islamy_application/pages/sebah_screen.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:islamy_application/settings_side_bar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List bottonNavPages = [
    const QuarnScreen(),
    const HadethScreen(),
    const RadioScreen(),
    const SebahScreen(),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Provider.of<ThemeProvider>(context).isDark
              ? ImagesNames.darkbg
              : ImagesNames.lightbg),
          fit: BoxFit.cover, // Adjust to fit your needs
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        drawer: const SettingsSideBar(),
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.islamy ?? 'Islamy'),
         //title: Text(AppLocalizations.of(context)!.islamy ),
),
        
        body: bottonNavPages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: _currentIndex,
          items:  [
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage("assets/images/icon_quran.png")),
              label:  AppLocalizations.of(context)?.quraan ?? "Quran",
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage("assets/images/icon_hadeth.png"),
              ),
              label: AppLocalizations.of(context)?.hadeth ??"Hadeth",
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: AppLocalizations.of(context)?.radio??"Radio",
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: AppLocalizations.of(context)?.sebah??"Sebha",
            )
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
