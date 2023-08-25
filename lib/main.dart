import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import './tabs.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  //debugPaintSizeEnabled = true;

  /*LocationPermission permission = await Geolocator.checkPermission();
  if(permission != LocationPermission.whileInUse || permission != LocationPermission.always)
  {
    LocationPermission requestPermission = await Geolocator.requestPermission();
  }*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: EasyLoading.init(),
      title: '恣由',
      /*darkTheme: ThemeData(
        brightness: Brightness.dark,
        //fontFamily: 'Softbrush',
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),*/
      theme: ThemeData(
        brightness: Brightness.light,
        //fontFamily: 'Softbrush',
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   fontFamily: 'Softbrush',
      //   useMaterial3: true,
      //   primarySwatch: Colors.blue,
      // ),
      routes: {
        //'/login': (context) => login(),
        //'/':(context) => Tabs(),
      },
      //initialRoute: '/login',

      defaultTransition: Transition.fadeIn,
      //onGenerateRoute: onGenerateRoute,
      getPages: [],
      home: Tabs(),
    );
  }
}

