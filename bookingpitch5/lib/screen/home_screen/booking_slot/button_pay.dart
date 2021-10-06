import 'package:flutter/material.dart';

class ButtonPay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints:BoxConstraints.expand(
          height: 50.0
      ),
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green
      ),
      child: Center(
          child: Text("Tìm trong khung giờ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center)),
    );
  }
}