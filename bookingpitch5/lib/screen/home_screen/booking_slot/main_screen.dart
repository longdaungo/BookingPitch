import 'package:bookingpitch5/screen/home_screen/booking_date/main_screen.dart';
import 'package:bookingpitch5/screen/home_screen/booking_slot/button_pay.dart';
import 'package:bookingpitch5/screen/home_screen/booking_slot/calendar_container.dart';
import 'package:bookingpitch5/screen/home_screen/booking_slot/slot.dart';
import 'package:flutter/material.dart';

import 'line_slot.dart';

class MainScreenBookingSlot extends StatelessWidget{
  ParameterToSlotPitch pars;

  MainScreenBookingSlot(this.pars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title:
        Text(pars.parsFromDetailPitch.pitchModel.name + " - " + pars.parsFromDetailPitch.detailPitchModel.name),
        backgroundColor: Colors.green,
      ),
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
          CalendarContainer(pars.selectedDate),
          LineSlot(),
          Slot(pars.timeStart, pars.timeEnd),

        ],
      ),
      bottomNavigationBar: ButtonPay(),
    );
  }
}