import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Screen/detailedRecordScreen.dart';
import '../providers/MedRecord.dart';

class RecordItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final record = Provider.of<MedRecord>(context);
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 3,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          title: Text(record.illness),
          onTap: () {
            Navigator.of(context).pushNamed(DetailedRecordScreen.routeName,
                arguments: record.id);
          },
        ),
      ),
    );
  }
}
