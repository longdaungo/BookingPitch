import 'package:bookingpitch5/models/detail_type_pitch.dart';
import 'package:bookingpitch5/models/pitch.dart';
import 'package:bookingpitch5/models/pitches.dart';
import 'package:flutter/material.dart';

import 'hot_deal_pitch.dart';

class HotDealPitches extends StatelessWidget{
  final PitchesModel pitchesModel;
  final PitchModel _pitchModel;
  final DetailTypePitchModel _detailPitchModel;
  HotDealPitches(this.pitchesModel, this._pitchModel, this._detailPitchModel);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: listPitches(),
    );
  }

  List<HotDealPitch> listPitches(){
    return pitchesModel.listPitches.map((pitchModel) => HotDealPitch(pitchModel.id,pitchModel.imgPath,
        pitchModel.name, pitchModel.location, pitchModel.time, pitchModel.distance, pitchModel.rates, pitchModel.listDetailTypePitch[0].nameDiscount,
        pitchModel.listDetailTypePitch[0].remainPrice, pitchModel.listDetailTypePitch[0].normalDayPrice, _pitchModel, _detailPitchModel)).toList();
  }
}