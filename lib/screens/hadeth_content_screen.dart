import 'package:flutter/material.dart';
import 'package:islamy_application/common/images_names.dart';

import 'package:islamy_application/models/hadeth_model.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:islamy_application/settings_side_bar.dart';
import 'package:provider/provider.dart';

class HadethContentScreen extends StatelessWidget {
  const HadethContentScreen({super.key});
  static const routeName = "HadethSreen";
  @override
  Widget build(BuildContext context) {
    HadeethModel hadeethModel =
        ModalRoute.of(context)!.settings.arguments as HadeethModel;
    //List<String> verses = quraanModel.loadSuraContent() as List<String>;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(Provider.of<ThemeProvider>(context).isDark
              ? ImagesNames.darkbg
              : ImagesNames.lightbg),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        drawer: SettingsSideBar(),
        appBar: AppBar(
          title: const Text("Islamy"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            //change the margin
              vertical: MediaQuery.of(context).size.height * 0.065,
              horizontal: MediaQuery.of(context).size.width * 0.15),
          padding: const EdgeInsets.all(15),
          decoration:  BoxDecoration(
              color:Theme.of(context).colorScheme.surface.withOpacity(0.4),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(hadeethModel.name),
              Divider(
                height: 20,
                thickness: 3,
                color: Theme.of(context).colorScheme.secondary,
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
