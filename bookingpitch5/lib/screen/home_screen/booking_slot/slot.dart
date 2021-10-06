import 'package:flutter/material.dart';

class Slot extends StatelessWidget {
  final String timeStart;
  final String timeEnd;
  Slot(this.timeStart, this.timeEnd);

  @override
  Widget build(BuildContext context) {
    var list = getSlots();
    // TODO: implement build
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
      child:

              Wrap(
                children: list,
              )
            );
  }

    List<Widget> getSlots(){
    List<Widget> list = [];
      var numberStart = int.parse(timeStart.substring(0,2));
      var numberEnd = int.parse(timeEnd.substring(0,2));
      for(int i = numberStart; i < numberEnd ; i++){
        list.add(Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            child:
            Column(
                children: [
                  Icon(Icons.sports_soccer, color: Colors.green, size: 70.0),
                  Text(i.toString()+":00 - "+ (i+1).toString()+":00"),
                  Text("100,000 đồng")
                ])));
      }
    return list;
    }
}
