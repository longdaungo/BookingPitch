import 'package:bookingpitch5/screen/home_screen/booking_date/ImageBanner.dart';
import 'package:bookingpitch5/screen/home_screen/detail_pitch/detail_pitch.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MainScreenBookingDate extends StatefulWidget {
  @override
  ParamenterToDateBookingScreen pars;
  MainScreenBookingDate(this.pars);
  MainScreenBookingDateState createState() => MainScreenBookingDateState(pars);
}

class MainScreenBookingDateState extends State<MainScreenBookingDate> {
  final timeStarts = ['06:00', "07:00", "08:00"];
  final timeEnds = ['06:00', "07:00", "08:00","23:00"];
  @required String timeStart = "06:00";
  @required String timeEnd = "07:00";
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  ParamenterToDateBookingScreen pars;
  MainScreenBookingDateState(this.pars);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              Text(pars.pitchModel.name + " - " + pars.detailPitchModel.name),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ImageBanner(),
            TableCalendar(
                focusedDay: _focusedDay,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
                Column(
                children: [
                  Text("Thời gian bắt đầu",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 1)),

                      child:
                      DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                        value: timeStart,
                        items: timeStarts.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          if(value == null)
                            return setState(() => timeStart = "06:00");
                          return setState(() => timeStart = value);
                          }
                      ))])
                ,
                Column(
                  children: [
                    Text("Thời gian kết thúc",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 1)),
                        child:
                        DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                          value: timeEnd,
                          items: timeEnds.map(buildMenuItem).toList(),
                          onChanged: (value){
                            if(value == null)
                              return setState(() => timeEnd = "07:00");
                            return setState(() => timeEnd = value);
                          }),
                    )
                  ])

            ]
                )
                ,

            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/slotBooking',
                arguments: ParameterToSlotPitch(pars, _focusedDay, timeStart, timeEnd));
                },
              child: Container(
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
              ),
            )

              ]
            ));
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
  void _onDaySelected(DateTime selectedDay, DateTime focusDay) {
    var fasd = selectedDay;
    var fasdfadsf = focusDay;
  }


}

class ParameterToSlotPitch{
  final ParamenterToDateBookingScreen parsFromDetailPitch;
  final DateTime selectedDate;
  final String timeStart;
  final String timeEnd;
  ParameterToSlotPitch(this.parsFromDetailPitch, this.selectedDate, this.timeStart, this.timeEnd);
}


