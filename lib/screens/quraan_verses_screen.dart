import 'package:flutter/material.dart';
import 'package:islamy_application/common/images_names.dart';
import 'package:islamy_application/models/quraan_model.dart';
import 'package:islamy_application/providers/theme_provider.dart';
import 'package:islamy_application/settings_side_bar.dart';
import 'package:provider/provider.dart';

class QuraanVirsesScreen extends StatefulWidget {
  const QuraanVirsesScreen({super.key});

  static const String routeName = "QuraanScreen";

  @override
  State<QuraanVirsesScreen> createState() => _QuraanVirsesScreenState();
}

class _QuraanVirsesScreenState extends State<QuraanVirsesScreen> {
  @override
  Widget build(BuildContext context) {
    QuraanModel quraanModel =
        ModalRoute.of(context)!.settings.arguments as QuraanModel;
    //List<String> verses = quraanModel.loadSuraContent() as List<String>;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            image:AssetImage(Provider.of<ThemeProvider>(context).isDark
              ? ImagesNames.darkbg
              : ImagesNames.lightbg),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        drawer:const  SettingsSideBar(),
        appBar: AppBar(
          title: const Text("Islamy"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.065,
              horizontal: MediaQuery.of(context).size.width * 0.15),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color:Theme.of(context).colorScheme.surface.withOpacity(0.4),
            borderRadius:const BorderRadius.all(Radius.circular(25))
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          
            children: [
              Text(quraanModel.suraName),
              Divider(
                height: 20,
                thickness: 3,
                color: Theme.of(context).colorScheme.secondary,
              ),
              Expanded(
                child: FutureBuilder<List<String>>(
                  future: quraanModel
                      .loadSuraContent(), // Load sura content asynchronously
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // Display a loading indicator while waiting
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      // Display an error message if something went wrong
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      // Display a message if the verses list is empty
                      return const Center(child: Text('No verses found.'));
                    }
                    List<String> verses = snapshot.data!;
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          '${verses[index]}\u06DD',
                          style: const TextStyle(
                            fontSize: 12,
                           // color: Colors.black
                          ),
                          // style: Theme.of(context).textThem,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        );
                      },
                      itemCount: verses.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
