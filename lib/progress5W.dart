import 'package:flutter/material.dart';

class Progress5W extends StatelessWidget {
  final int progressStep;

  Progress5W({@required this.progressStep});

  int color_base = 0xFF707070;
  int colorSuccess_base = 0xFFF7C336;
  @override
  Widget build(BuildContext context) {
    Widget LineProgress({@required int color, @required double linelength}) =>
        Expanded(
            child: Container(
                height: linelength,
                width: double.infinity,
                color: Color(color)));

    Widget PointMark({@required int colorBorder, @required int color}) =>
        Container(
          height: 15,
          width: 15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Color(colorBorder), width: 3),
              color: Color(color),
              shape: BoxShape.circle),
        );
    Widget LineProgressSuccess =
        LineProgress(linelength: 5, color: this.colorSuccess_base);
    Widget LineProgressWait =
        LineProgress(linelength: 3, color: this.color_base);

    Widget PointMarkSuccess = PointMark(
        colorBorder: this.colorSuccess_base, color: this.colorSuccess_base);
    Widget PointMarkWait =
        PointMark(colorBorder: this.color_base, color: 0xFFFFFFFF);
    TextStyle fontsetting({@required int index, @required int check}) =>
        TextStyle(
            fontSize: 12,
            color: index == check ? Colors.grey[900] : Colors.transparent);
    return Container(
      height: 30,
      width: double.infinity,
      color: Colors.green,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: Stack(
        children: [
          Container(
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //3 -5
                this.progressStep >= 1 ? LineProgressSuccess : LineProgressWait,
                this.progressStep >= 2 ? LineProgressSuccess : LineProgressWait,
                this.progressStep >= 3 ? LineProgressSuccess : LineProgressWait,
                this.progressStep >= 4 ? LineProgressSuccess : LineProgressWait,
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                PointMarkSuccess,
                this.progressStep >= 1 ? PointMarkSuccess : PointMarkWait,
                this.progressStep >= 2 ? PointMarkSuccess : PointMarkWait,
                this.progressStep >= 3 ? PointMarkSuccess : PointMarkWait,
                this.progressStep >= 4 ? PointMarkSuccess : PointMarkWait,
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 15, left: 20, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "รอ",
                  style: fontsetting(check: this.progressStep, index: 0),
                ),
                Text(
                  "ยืนยัน",
                  style: fontsetting(check: this.progressStep, index: 1),
                ),
                Text(
                  "ทำ",
                  style: fontsetting(check: this.progressStep, index: 2),
                ),
                Text(
                  "จัดส่ง",
                  style: fontsetting(check: this.progressStep, index: 3),
                ),
                Text(
                  "สำเร็จ",
                  style: fontsetting(check: this.progressStep, index: 4),
                ),
              ],
            ),
            // child: ,
          )
        ],
      ),
    );
  }
}
