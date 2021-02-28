import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Column(children: <Widget>[
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
                      "\nAlert\n\nYou are showing high signs of a posible heart attact\nPlease stop for a minute\nIf you want to request an ambulance, do not dismiss message ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    FlatButton.icon(
                      icon: Icon(Icons.done),
                      label: Text("DISMISS"),
                      onPressed: () {},
                    )
                  ],
                ),
              ))
        ]));
  }
}
