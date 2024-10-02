import 'package:flutter/material.dart';
import 'package:islamy_application/pages/hadeth_screen.dart';
import 'package:islamy_application/pages/quarn_screen.dart';
import 'package:islamy_application/pages/radio_screen.dart';
import 'package:islamy_application/pages/sebah_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  List bottonNavPages=[
    const QuarnScreen(),
    const HadethScreen(),
    const RadioScreen(),
    const SebahScreen(),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.cover, // Adjust to fit your needs
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islamy"),
          
        ),
        body: bottonNavPages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          
          currentIndex:_currentIndex,
         
          items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
              label: "Quran",
            //  backgroundColor: Color.fromRGBO( 183, 147, 95, 1),
            ),
          BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/images/icon_hadeth.png"),),
              label: "Hadeth",
              //backgroundColor: Color.fromRGBO( 183, 147, 95, 1),
              ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: "Radio",
             // backgroundColor: Color.fromRGBO( 183, 147, 95, 1),
              ),
          BottomNavigationBarItem(
              icon:ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: "Sebha",
              //backgroundColor: Color.fromRGBO( 183, 147, 95, 1)
              )
        ],
        onTap: (index)
        {
          setState(() {
            _currentIndex=index;
          });

        },),
      ),
    );
  }
}
