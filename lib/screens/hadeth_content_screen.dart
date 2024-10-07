import 'package:flutter/material.dart';
import 'package:islamy_application/models/hadeth_model.dart';

class HadethContentScreen extends StatelessWidget {
  const HadethContentScreen({super.key});
  static const routeName = "HadethSreen";
  @override
  Widget build(BuildContext context) {
    HadeethModel hadeethModel =
        ModalRoute.of(context)!.settings.arguments as HadeethModel;
    //List<String> verses = quraanModel.loadSuraContent() as List<String>;
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
        body: Container(
          margin: EdgeInsets.symmetric(
            //change the margin
              vertical: MediaQuery.of(context).size.height * 0.065,
              horizontal: MediaQuery.of(context).size.width * 0.15),
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Color.fromARGB(136, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(hadeethModel.name),
              Divider(
                height: 20,
                thickness: 3,
                color: Theme.of(context).primaryColor,
              ),
                Expanded(
                child:SingleChildScrollView(
                  child: Text(hadeethModel.content),
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
