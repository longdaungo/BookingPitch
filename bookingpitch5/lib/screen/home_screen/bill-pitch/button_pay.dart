import 'package:bookingpitch5/screen/home_screen/booking_date/main_screen.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  DoneButton();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
    Container(
        constraints: BoxConstraints.expand(
            height: 50.0
        ),
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green
        ),
        child: Center(
            child: Text("Đặt Sân",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center)),
      );

  }
}
