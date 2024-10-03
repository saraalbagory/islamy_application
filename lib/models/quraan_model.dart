import 'package:flutter/services.dart';

class QuraanModel {
  int fileIndex;
  String suraName;
  QuraanModel({required this.fileIndex, required this.suraName});
  Future<List<String>> loadSuraContent() async {
    String content = await rootBundle.loadString('assets/quraan/$fileIndex.txt');
    List<String> verses = content.split('\n');
    return verses;
  }
}
