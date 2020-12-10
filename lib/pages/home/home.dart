import 'package:flutter/material.dart';
import 'package:habbit_tracker/shared/day_tile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width * .75,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 5.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: new Radius.circular(100.0),
                        topLeft: new Radius.circular(5.0),
                        bottomLeft: new Radius.circular(5.0),
                        bottomRight: new Radius.circular(5.0),
                      )),
                  child: Text("Test Box"),
                ),
                Flexible(
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 5,
                    children: List.generate(25, (index) {
                      return Center(
                        child: dayTile(index + 1),
                      );
                    }),
                  ),
                ),
                Text("data"),
              ],
            ),
          )),
    );
  }
}
