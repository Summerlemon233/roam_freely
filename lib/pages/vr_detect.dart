import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class vr_detect extends StatefulWidget {
  const vr_detect({super.key});

  @override
  State<vr_detect> createState() => _vr_detectState();
}

class _vr_detectState extends State<vr_detect> {
  @override
  void initState() {
    // TODO: implement initState
    EasyLoading.show(status: '正在检测已连接的设备');
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    EasyLoading.dismiss();
    EasyLoading.removeAllCallbacks();
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

          ],
        ),
      ),
    );
  }
}
