import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_application/common/images_names.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SebahScreen extends StatefulWidget {
  const SebahScreen({super.key});

  @override
  State<SebahScreen> createState() => _SebahScreenState();
}

class _SebahScreenState extends State<SebahScreen> {
  double angle = 0;
  int counter = 0;
  List<String> tasebahat = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله "
  ];
  int currentTasebah = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);
    return Container(
      height: double.infinity,
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: angle,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                  Image.asset(
                    provider.isDark
                        ? ImagesNames.darkSebah
                        : ImagesNames.lightSebah,
                    height: MediaQuery.of(context).size.height * 0.26,
                    width: double.infinity,
                  ),
                  Positioned(
                      left: 160,
                      top: 0,
                      // right:62,
                      bottom: 200,
                      child: Image.asset((provider.isDark
                          ? ImagesNames.darkSebahHead
                          : ImagesNames.lightSebahHead)))
                ],
              ),
            ),
            Text(AppLocalizations.of(context)!.tasebahat),
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor.withOpacity(0.75)),
              child: Center(
                  child: Text(
                counter.toString(),
                style: TextStyle(color: Colors.white),
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        side: BorderSide(
                            color: Theme.of(context).colorScheme.secondary)),
                    onPressed: rotate,
                    child: Text(
                      tasebahat[currentTasebah],
                      style: TextStyle(color: Colors.white),
                    )),
                      ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        side: BorderSide(
                            color: Theme.of(context).colorScheme.secondary)),
                    onPressed: reset,
                    child: Text(
                      AppLocalizations.of(context)!.reset,
                     
                      style: TextStyle(color: Colors.white),
                    )),
            
              ],
            )
          ],
        ),
      )),
    );
  }
  void reset(
  ){
    setState(() {
      counter=0;
      currentTasebah = 0;
    });
  }
  rotate() {
    setState(() {
      angle += 0.3;
      if (counter != 0 && counter % 100 == 0) {
        currentTasebah = 0;
      }

      if (counter % 33 == 0) {
        if (currentTasebah < 3) {
          currentTasebah++;
        } else {
          currentTasebah = 0;
        }
      }
      counter++;
      //  else if(counter % 100 == 0)
      //  {
      //    currentTasebah = 3;
      //  }
    });
  }
}
