import '../model/trickModel.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';

class TrickViewModel {
  late List data;

  Future<List<Trick>> getTricks() async {
    var jsonText = await rootBundle.loadString('assets/jsonData/tricks.json');
    data = json.decode(jsonText);

    List<Trick> tricks = [];

    for (int i = 0; i < data.length; i++) {
      Trick temp = Trick.fromJson(data[i]);
      tricks.add(temp);
    }

    return tricks;
  }
}
