import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/MedRecords.dart';
import './recordItem.dart';

class RecordList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final recordData = Provider.of<MedRecords>(context);
    final records = recordData.recordItem;
    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: records[i],
        child: RecordItem(),
      ),
    );
  }
}
