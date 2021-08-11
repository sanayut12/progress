import 'package:flutter/material.dart';

class Progress5H extends StatelessWidget {
  final int progressStep;

  Progress5H({@required this.progressStep});

  int color_base = 0xFF707070;
  int colorSuccess_base = 0xFFF7C336;
  @override
  Widget build(BuildContext context) {
    Widget LineProgress({@required int color, @required double linelength}) =>
        Expanded(
            child: Container(
                height: double.infinity,
                width: linelength,
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
    TextStyle fontsetting() => TextStyle(fontSize: 12, color: Colors.grey[900]);
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
      padding: EdgeInsets.only(top: 200,bottom: 200),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
            height: double.infinity,
            width: double.infinity,
            // padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
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
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รอยืนยันการสั่งซื้อ",
                  style: fontsetting(),
                ),
                Text(
                  "ยืนยันการสั่งซื้อแล้ว",
                  style: fontsetting(),
                ),
                Text(
                  "กำลังจัดทำและจัดเตรียมสินค้่า",
                  style: fontsetting(),
                ),
                Text(
                  "กำลังจัดส่งสินค้า",
                  style: fontsetting(),
                ),
                Text(
                  "จัดส่งสำเร็จสำเร็จ",
                  style: fontsetting(),
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
