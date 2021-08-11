import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.green,
      child: Stack(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 3,
                  width: double.infinity,
                  color: Colors.blue,
                )),
                Expanded(
                    child: Container(
                  height: 3,
                  width: double.infinity,
                  color: Colors.amber,
                ))
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 1.5),
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 1.5),
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 1.5),
                      color: Colors.white,
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 40, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("data"),
                Text("data"),
                Text("data"),
              ],
            ),
            // child: ,
          )
        ],
      ),
    );
  }
}
