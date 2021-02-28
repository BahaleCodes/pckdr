import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import './healthTip.dart';

class HealthTips with ChangeNotifier {
  List<HealthTip> _tip = [
    // HealthTip(
    //   id: 't1',
    //   index: 0,
    //   tip: 'An apple a day keeps the doctors away',
    // ),
    // // HealthTip(
    // //   id: 't2',
    // //   index: 1,
    // //   tip: 'Sunlight will surely keep the mela',
    // // ),
    // // HealthTip(
    // //   id: 't3',
    // //   index: 2,
    // //   tip: 'An apple a day keeps the doctors away',
    // // ),
  ];

  List<HealthTip> get tip {
    return [..._tip];
  }

  HealthTip findById(String id) {
    return _tip.firstWhere((element) => element.id == id);
  }

  Future<void> fetchAndSetTips() async {
    const url = "https://pocketdoctor-8d0b0.firebaseio.com/healtTips.json";
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<HealthTip> loadedTips = [];
      extractedData.forEach((tipId, tipValue) {
        loadedTips.add(HealthTip(
          index: tipValue['index'],
          id: tipId,
          tip: tipValue['tip'],
        ));
      });
      _tip = loadedTips;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> add(HealthTip healthtip) async {
    const url = "https://pocketdoctor-8d0b0.firebaseio.com/healtTips.json";
    try {
      final response = await http.post(
        url,
        body: json.encode(
            {'id': healthtip.id, 'index': _tip.length, 'tip': healthtip.tip}),
      );
      final newTip = HealthTip(
        id: json.decode(response.body)['name'],
        index: _tip.length,
        tip: healthtip.tip,
      );
      _tip.add(newTip);
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
