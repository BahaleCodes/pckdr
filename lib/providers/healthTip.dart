import 'package:flutter/material.dart';

class HealthTip with ChangeNotifier {
  final int index;
  final String tip;
  final String id;

  HealthTip({
    @required this.id,
    @required this.index,
    @required this.tip,
  });
}
