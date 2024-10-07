import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_application/models/hadeth_model.dart';
import 'package:islamy_application/screens/hadeth_content_screen.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<HadeethModel> ahadeth = [];

  @override
  void initState() {
    super.initState();
    loadAhadeth();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Image.asset(
            "assets/images/hadeth_logo.png",
            height: MediaQuery.of(context).size.height * .25,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ahadeth.isEmpty
                ? const Center(child: Text("empty"))
                : ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      height: 13.0,
                      thickness: 0,
                      color: Colors.transparent,
                    ),
                    itemBuilder: (context, index) {
                      return PhysicalModel(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        elevation: 8,
                        shadowColor: const Color.fromARGB(133, 147, 96, 1),
                        child: ListTile(
                          leading: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                "assets/images/Vector.png",
                                color: Theme.of(context).primaryColor,
                                height: 35,
                                width: 40,
                              ),
                              Text(
                                (index + 1).toString(),
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          title: Text(ahadeth[index].name),
                          trailing: IconButton.filled(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, HadethContentScreen.routeName,
                                  arguments: ahadeth[index]);
                            },
                            icon: const Icon(
                              Icons.play_arrow_rounded,
                            ),
                            color: Colors.white,
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Theme.of(context).primaryColor),
                            ),
                          ),
                          titleAlignment: ListTileTitleAlignment.center,
                        ),
                      );
                    },
                    itemCount: ahadeth.length,
                  ),
          )
        ],
      ),
    );
  }

  void loadAhadeth() async {
    List<HadeethModel> _ahadeth = [];

    String data = await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> ahadethList = data.trim().split('#');
    ahadethList.removeWhere(
      (element) => element.trim().isEmpty,
    );
    for (var i = 0; i < ahadethList.length; i++) {
      int index = ahadethList[i].trim().indexOf('\n');
      String name = ahadethList[i].trim().substring(0, index);
      String content = ahadethList[i].trim().substring(index + 1);
      _ahadeth.add(HadeethModel(name: name, content: content));
    }
    ahadeth = _ahadeth;
    // setState(() {});
  }
}
