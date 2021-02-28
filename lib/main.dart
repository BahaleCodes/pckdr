import 'package:flutter/material.dart';
import 'package:pocketDoctorv1/Screen/detailedRecordScreen.dart';
import 'package:provider/provider.dart';

import './Screen/Home.dart';
import './providers/auth.dart';
import './Screen/authScreen.dart';
import './providers/healthTips.dart';
import './Screen/recordsOverview.dart';
import './providers/MedRecords.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          ),
          ChangeNotifierProvider.value(
            value: HealthTips(),
          ),
          ChangeNotifierProvider.value(value: MedRecords())
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: "PocketDoctor",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.orange,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                textTheme: TextTheme()),
            home: HomeScreen(), //auth.isAuth ? HomeScreen() : AuthScreen(),
            routes: {
              HomeScreen.routeName: (ctx) => HomeScreen(),
              RecordsOverview.routeName: (ctx) => RecordsOverview(),
              DetailedRecordScreen.routeName: (ctx) => DetailedRecordScreen(),
            },
          ),
        ));
  }
}
