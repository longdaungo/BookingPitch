import 'package:bookingpitch5/models/pitches.dart';
import 'package:bookingpitch5/screen/home_screen/main_screen/pitches.dart';
import 'package:bookingpitch5/screen/home_screen/main_screen/type_pitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../footer_menu.dart';
import 'image_banner.dart';
import 'my_location.dart';
import 'search_value.dart';
import 'my_voucher.dart';
import 'title_pitches.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PitchesModel pitchesModel = PitchesModel.fetchAll();
    // TODO: implement build
    return Scaffold(
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        scrollDirection: Axis.vertical,
        children: [
          ImageBanner("assets/images/Title.png", Color(0xff38ab44)),
          MyLocation("603/17 Phạm Văn Chiêu", Color(0xff38ab44)),
          SearchValue(20.0, 20.0),
          TypePitch(
              20.0,
              20.0,
              "assets/images/san5.png",
              "assets/images/san7.png",
              "assets/images/san11.png",
              "assets/images/sanfusan.png"),
          MyVoucher(20.0, 20.0),
          TitlePitch(20.0, 20.0, "Sân bóng gần đây"),
          SizedBox(
            height: 200.0,
            child: Pitches(pitchesModel),
          ),
        ],
      ),
      bottomNavigationBar: FooterMenu(),
    );
  }
}
