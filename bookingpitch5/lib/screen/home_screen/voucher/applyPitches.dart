import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


class ApplyVoucherPitch extends StatefulWidget{
  @override
  _ApplyVoucherPitchState createState() => _ApplyVoucherPitchState();
}

class _ApplyVoucherPitchState extends State<ApplyVoucherPitch> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Danh sách sân áp dụng")),),
      body: GroupedListView<dynamic, String>(
        elements: _dataDummy,
        groupBy: (element) => element['group'],
        groupSeparatorBuilder: (String groupByValue) => Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Flexible(
                child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          groupByValue,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          )                       
                        ),
                    ],
                  ),
              )            
            ],
          ),
        ),
        itemBuilder: (context, dynamic element) {
          return Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: ClipRRect(
                  child: Image(
                    image: NetworkImage(element['thumbnailUrl']),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                )),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            element['title'],
                            style: TextStyle(
                              fontSize: 16, 
                              fontWeight: FontWeight.bold
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                          ),
                        ), 
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(Icons.star_outlined, color: Colors.grey, size: 16,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text('${element['rating']}'),
                              )
                            ],
                          ),
                          )
                      ],
                    ),
                ))
              ],
            ),
          );
        },
        itemComparator: (item1, item2) => item1['title'].compareTo(item2['title']), // optional
        useStickyGroupSeparators: true, // optional
        floatingHeader: true, // optional
        order: GroupedListOrder.ASC, // optional
      ),
    );
  }
}

List _dataDummy = [
  {
    "albumId": 1,
    "id": 1,
    "title": "Sân yêu em",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952",
    "rating": 4.5,
    "group":"1"
  },
  {
    "albumId": 1,
    "id": 2,
    "title": "Sân vcvl",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796",
    "rating": 4.2,
    "group":"1"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "Sân Pass môn",
    "url": "https://via.placeholder.com/600/24f355",
    "thumbnailUrl": "https://via.placeholder.com/150/24f355",
    "rating": 4.8,
    "group":"1"
  },
];