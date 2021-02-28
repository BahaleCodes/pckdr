import 'package:flutter/foundation.dart';

class MedRecord with ChangeNotifier {
  final String id;
  final int index;
  final String illness;
  final String dignosingDoc;
  final String dignosingDate;
  final String perscription;
  final String conditionDesc;
  final String medDosage;

  MedRecord(
      {@required this.id,
      @required this.index,
      @required this.illness,
      @required this.dignosingDoc,
      @required this.dignosingDate,
      @required this.perscription,
      @required this.conditionDesc,
      @required this.medDosage});
}
