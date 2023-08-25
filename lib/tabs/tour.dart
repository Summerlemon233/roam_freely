import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roam_freely/system/friend.dart';

import '../pages/vr.dart';
import '../pages/vr_detect.dart';
import '../system/common_widgets.dart';

class tour extends StatefulWidget {
  const tour({Key? key}) : super(key: key);

  @override
  State<tour> createState() => _tourState();
}

class _tourState extends State<tour> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.fromLTRB(13, 5, 13, 2),
      child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.map,
                        size: 18,
                      ),
                      Text('线上'),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          funcCard(
              color: Colors.black,
              Area: '地图',
              AssetPath: 'assets/images/map_example.png',
              onTapFunc: () {
                setState(() {});
              }),
          SizedBox(
            height: 10,
          ),
          funcCard(
              color: Colors.black,
              Area: 'VR 体验',
              AssetPath: 'assets/images/vr.png',
              onTapFunc: () {
                setState(() {
                  Get.to(vr());
                });
              }),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.map,
                        size: 18,
                      ),
                      Text('线下'),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                ),

              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          funcCard(
              color: Colors.black,
              Area: '旅行笔记',
              AssetPath: 'assets/images/notes.jpg',
              onTapFunc: () {
                setState(() {

                });
              }),
          SizedBox(
            height: 10,
          ),
          funcCard(
              color: Colors.white,
              Area: '寻找同伴',
              AssetPath: 'assets/images/seek_friends.jpg',
              onTapFunc: () {
                setState(() {
                  Get.to(friend());
                });
              }),
        ],
      ),
    ));
  }
}
