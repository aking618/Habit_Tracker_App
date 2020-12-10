import 'package:flutter/material.dart';

Widget dayTile(int day) {
  return InkWell(
    onTap: () {
      print("Day $day was tapped!");
    },
    child: Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [new BoxShadow(color: Colors.grey, blurRadius: 10.0)]),
      child: Center(
        child: Text(
          "$day",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    ),
  );
}
