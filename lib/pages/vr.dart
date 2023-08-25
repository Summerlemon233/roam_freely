import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:roam_freely/pages/vr_detect.dart';

import '../system/common_widgets.dart';

class vr extends StatefulWidget {
  const vr({super.key});

  @override
  State<vr> createState() => _vrState();
}

class _vrState extends State<vr> {
  @override
  void initState() {
    // TODO: implement initState
    /*EasyLoading.show(status: '正在检测已连接的设备');
    super.initState();*/
  }
  @override
  void dispose() {
    // TODO: implement dispose
    /*EasyLoading.dismiss();
    EasyLoading.removeAllCallbacks();*/
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VR 体验"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 8,
            ),
            funcCard(
              color: Colors.black,
                Area: 'VR 体验',
                AssetPath: 'assets/images/vr.png',
                onTapFunc: () {
                  setState(() {

                  });
                }),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.warning),
                Text(
                  "提示",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),],
            ),),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text("         想要使用VR体验功能，您需要连接外置VR头戴显示设备。如果确定已经连接好，请按下面的按键开始检测。",style: TextStyle(fontSize: 20),),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Get.to(vr_detect());
            }, child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "开始检测",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),],
            ),),
          ],
        ),
      ),
    );
  }
}
