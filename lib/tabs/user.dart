import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roam_freely/system/change_avatar.dart';
import 'package:roam_freely/system/settings.dart';

import '../system/common_image.dart';
import '../system/userdata.dart';

class user extends StatefulWidget {
  const user({Key? key}) : super(key: key);

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  //Brightness _brightness = Brightness.light;
  bool _isSelectedAvatar = !(PhotoPath_avatar[0] == "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          margin: EdgeInsets.fromLTRB(12, 5, 12, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                child: _isSelectedAvatar
                    ? Avatar(image: imageFromFile(PhotoPath_avatar[0]).image)
                    : Avatar(image: AssetImage('assets/images/not_login.png')),

              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.2,),
              Text("${basicData['username']}",style: TextStyle(fontSize: 20),),
            ],
          ),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              blurStyle: BlurStyle.outer,
              offset: Offset.zero,
            ),],
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        SizedBox(height: 30,),
        //TODO
        ListTile(
          shape: StadiumBorder(),
          leading: const Icon(Icons.person),
          title: const Text("个人主页"),
          onTap: () {
            setState(() {});
          },
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
        const Divider(),
        ListTile(
          shape: StadiumBorder(),
          trailing: Icon(Icons.keyboard_arrow_right),
          leading: const Icon(Icons.credit_card),
          title: const Text("我的订单"),
          onTap: () {
            setState(() {});
          },
        ),
        const Divider(),
        ListTile(
          shape: StadiumBorder(),
          trailing: Icon(Icons.keyboard_arrow_right),
          leading: const Icon(Icons.collections),
          title: const Text("我的收藏"),
          onTap: () {
            setState(() {});
          },
        ),
        const Divider(),
        ListTile(
          trailing: Icon(Icons.keyboard_arrow_right),
          leading: const Icon(Icons.history),
          title: const Text("浏览历史"),
          shape: StadiumBorder(),
          onTap: () {
            setState(() {});
          },
        ),
        const Divider(),
        ListTile(
          shape: StadiumBorder(),
          trailing: Icon(Icons.keyboard_arrow_right),
          leading: const Icon(Icons.settings),
          title: const Text("设置"),
          onTap: () {
            setState(() {
              Get.to(settings());
            });
          },
        ),

      ],
    ));
  }
}
