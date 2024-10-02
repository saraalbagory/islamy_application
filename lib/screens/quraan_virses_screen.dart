import 'package:flutter/material.dart';

class QuraanVirsesScreen extends StatelessWidget {
  const QuraanVirsesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
         appBar: AppBar(
          title: const Text("Islamy"),
          
        ),
        body: Column(
          children: [
           Text("البقرة"),
           Divider(
            height: 20,
            thickness: 3,
            color: Theme.of(context).primaryColor,
            
           )           
          ],
        ),
        
      ),
    );
  }
}
