import 'package:flutter/material.dart';

class QuarnScreen extends StatelessWidget {
  const QuarnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/qur2an_screen_logo.png",
                height: MediaQuery.of(context).size.height * .25,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 13.0,
                    thickness: 0,
                    color: Colors.transparent,
                  ),
                  itemBuilder: (context, index) {
                    return PhysicalModel(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      elevation:8,
                      shadowColor: const Color.fromARGB(133, 147, 96, 1),
                      child: ListTile(
                       
                        leading: Stack(
                          children: [
                            Image.asset(
                              "assets/images/Vector.png",
                              color: Colors.black,
                            ),
                            Positioned(
                                top: 5,
                                left: 12,
                                child: Text((index + 1).toString()))
                          ],
                        ),
                        title: Text("البقرة"),
                        subtitle: Text("Al-Baqarah "),
                        dense: true,
                      ),
                    );
                  },
                  itemCount: 7,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
