

import 'package:flutter/cupertino.dart';

import 'detail_type_pitch.dart';
import 'pitch.dart';

class PitchesModel{
  final List<PitchModel> listPitches;
  PitchesModel(this.listPitches);

   static PitchesModel fetchAll(){
    return new PitchesModel(
       <PitchModel>[
        PitchModel("1","Sân nhà văn hóa", "Quận Gò Vấp","assets/images/sanbanh1.png","assets/images/DetailPitch.png", "6:00-9:00",
            "500m", 4, 4,
            1, 0, 0,
            <DetailTypePitchModel>[
              DetailTypePitchModel("Sân A","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông"),
              DetailTypePitchModel("Sân B","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông"),
              DetailTypePitchModel("Sân C","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông"),
              DetailTypePitchModel("Sân D","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông"),
              DetailTypePitchModel("Sân B","assets/images/sanbanh1.png", "Sân 7", "100 nghìn đồng", "200 nghìn đông")
            ]),
         PitchModel("2","Sân nhà vĩnh hiệp", "Quận Gò Vấp","assets/images/sanbanh1.png","assets/images/DetailPitch.png", "6:00-9:00",
             "500m", 5, 0,
             0, 1, 0,
             <DetailTypePitchModel>[
               DetailTypePitchModel("Sân A","assets/images/sanbanh1.png", "Sân 11", "100 nghìn đồng", "200 nghìn đông"),
             ]),
         PitchModel("3","Sân nhà hữu nhường", "Quận Gò Vấp","assets/images/sanbanh1.png","assets/images/DetailPitch.png", "6:00-9:00",
             "500m", 5, 2,
             0, 0, 0,
             <DetailTypePitchModel>[
               DetailTypePitchModel("Sân A","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông"),
               DetailTypePitchModel("Sân B","assets/images/sanbanh1.png", "Sân 5", "100 nghìn đồng", "200 nghìn đông")
             ]),
      ]
    );
  }

  static PitchModel? getPitchById(String id){
       PitchesModel pitches = fetchAll();
       for(int i = 0 ; i < pitches.listPitches.length;i++){
         if(pitches.listPitches[i].id == id){
            return pitches.listPitches[i];
         }
       }
       return null;
  }
}