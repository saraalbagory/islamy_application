import 'package:flutter/material.dart';

class SebahScreen extends StatefulWidget {
  const SebahScreen({super.key});

  @override
  State<SebahScreen> createState() => _SebahScreenState();
}

class _SebahScreenState extends State<SebahScreen> {
  double angle = 0;
  int counter = 0;
  List<String> tasebahat = ["سبحان الله", "الحمد لله", "الله أكبر"];
  int currentTasebah = 0;
  @override
  Widget build(BuildContext context) {
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
                children: [Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                  Image.asset("assets/images/body_sebha_logo.png",height:MediaQuery.of(context).size.height * 0.26,width:double.infinity ,),
                  Positioned(
                        left: 160,
                       top: 0,
                      // right:62,
                      bottom: 200,
                      child: Image.asset("assets/images/head_of_seb7a.png"))
                ],
              ),
            ),Text("عدد التسبيحات"),
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,       
                ),
                onPressed: rotate, child: Text(tasebahat[currentTasebah],style: TextStyle(color: Colors.white),))
          ],
        ),
      )),
    );
  }

  rotate() {
    setState(() {
      angle += 0.3;
      counter++;
      if (counter % 30 == 0) {
        if (currentTasebah < 2) {
          currentTasebah++;
        } else {
          currentTasebah = 0;
        }
      }
    });
  }
}
