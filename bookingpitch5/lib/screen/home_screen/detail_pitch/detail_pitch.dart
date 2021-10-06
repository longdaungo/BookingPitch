import 'package:bookingpitch5/models/detail_type_pitch.dart';
import 'package:bookingpitch5/models/pitch.dart';
import 'package:flutter/material.dart';

class DetailPitch extends StatelessWidget{
  final String name;
  final String imgPath;
  final String typePitch;
  final String normalDayPrice;
  final String specialDayPrice;
  final DetailTypePitchModel detailTypePitchModel;
  final PitchModel pitchModel;

  DetailPitch(this.name, this.imgPath, this.typePitch, this.normalDayPrice, this.specialDayPrice,
      this.detailTypePitchModel, this.pitchModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
          decoration: BoxDecoration(
              color: Colors.grey
          ),
          margin: EdgeInsets.fromLTRB(
              10.0,0,0.0,0
          ),
          constraints: BoxConstraints.expand(
            width: 200
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imgPath,fit: BoxFit.fill),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                child: Row(
                  children: [
                       Text("Ngày thường: ",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(normalDayPrice)
                  ],
                ),
              ),
              Container(

                child: Row(
                  children: [
                    Text("Ngày đặc biệt: ",style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(specialDayPrice)
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints.expand(
                  height: 50.0
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.green,
                    width: 5.0
                  )
                ),
                child:
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/dateBooking',
                        arguments: ParamenterToDateBookingScreen(pitchModel, detailTypePitchModel));
                  },
                  child: Center(
                      child: Text("Đặt sân",
                          textAlign: TextAlign.center)),
                ),
                )

            ],
          ),
        );
  }
}

class ParamenterToDateBookingScreen{
  final PitchModel pitchModel;
  final DetailTypePitchModel detailPitchModel;
  ParamenterToDateBookingScreen(this.pitchModel, this.detailPitchModel);
}