import 'package:flutter/material.dart';

import '../Screen/recordsOverview.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            leading: IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
            title: Text("Hello Thabo"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text("Medical Record"),
            onTap: () {
              Navigator.of(context).pushNamed(RecordsOverview.routeName);
            },
          )
        ],
      ),
    );
  }
}
