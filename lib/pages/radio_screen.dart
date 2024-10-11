import 'package:flutter/material.dart';

class RadioScreen extends StatelessWidget {
  const RadioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // margin:EdgeInsets.all(20) ,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/radio_image.png"),
            //   SizedBox(
            //   height: MediaQuery.of(context).size.height*0.15,
            // ),
            const Text("إذاعة القرآن الكريم"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 45,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 40,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
