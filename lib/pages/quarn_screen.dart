import 'package:flutter/material.dart';
import 'package:islamy_application/common/qurann_info.dart';
import 'package:islamy_application/models/quraan_model.dart';
import 'package:islamy_application/screens/quraan_verses_screen.dart';

class QuarnScreen extends StatefulWidget {
  const QuarnScreen({super.key});

  @override
  State<QuarnScreen> createState() => _QuarnScreenState();
}

class _QuarnScreenState extends State<QuarnScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(20.0),
                  elevation: 8,
                  shadowColor: const Color.fromARGB(133, 147, 96, 1),
                  child: ListTile(
                    leading: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          "assets/images/Vector.png",
                          color: Theme.of(context).colorScheme.secondary,
                          height: 35,
                          width: 40,
                        ),
                        // Positioned(
                        //     top: 5,
                        //     left: 12,
                        Text(
                          (index + 1).toString(),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    title: Text(QurannInfo.arSuras[index]),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(QurannInfo.quranSurasEn[index]),
                        Text(
                            '${QurannInfo.suraVersesCount[index].toString()} verses'),
                      ],
                    ),
                    trailing: IconButton.filled(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, QuraanVirsesScreen.routeName,
                            arguments: QuraanModel(
                                fileIndex: index + 1,
                                suraName: QurannInfo.arSuras[index]));
                      },
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                      ),
                      color: Colors.white,
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                    isThreeLine: true,
                    subtitleTextStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                        fontSize: 11,
                        color: Colors.grey),
                    titleAlignment: ListTileTitleAlignment.center,
                  ),
                );
              },
              itemCount: QurannInfo.numberOfSuras,
            ),
          )
        ],
      ),
    );
  }
}
