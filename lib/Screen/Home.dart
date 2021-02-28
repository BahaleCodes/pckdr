import 'package:flutter/material.dart';
import 'package:pocketDoctorv1/Screen/recordsOverview.dart';
import 'package:pocketDoctorv1/widgets/appdrawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.green,
      ),
      drawer: AppDrawer(),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(315, 107, 207, 1).withOpacity(0.5),
              Color.fromRGBO(187, 255, 188, 1).withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 1],
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "\nCurrent condition: Flu",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Current Medication: Alegex",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Last Chcck up: 10 October 2020",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton.icon(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.green,
                        ),
                        label: Text(
                          "More Details",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RecordsOverview.routeName);
                        },
                      ),
                    )
                  ],
                ),
                height: screenHeight * 0.35,
                width: screenWidth,
              ),
            ),
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.lightGreen[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Health Tip!",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "______________________",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "An Apple a day Keeps the doctor away.",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton.icon(
                    icon: Icon(
                      Icons.local_hospital,
                      color: Colors.red,
                      size: 30,
                    ),
                    label: Text(
                      "Call E.M.S",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
