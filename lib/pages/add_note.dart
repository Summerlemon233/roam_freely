import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../system/common_image.dart';
import '../system/userdata.dart';
import '../system/userdata_func.dart';
import 'package:flutter_pickers/pickers.dart';


class add_note extends StatefulWidget {
  const add_note({Key? key}) : super(key: key);

  @override
  State<add_note> createState() => _add_noteState();
}

class _add_noteState extends State<add_note> {
  final titleController = TextEditingController();
  final contextController = TextEditingController();
  bool isSaved_mood = false;
  String initProvince = '北京市', initCity = '市辖区', initTown = '海淀区';

  void saveMoodData() {
    int index = basicData["note_case"];
    //var rng = new Random();
    DateTime now = DateTime.now();
    String formattedDate =
        '${now.month}月${now.day}日 ${now.hour}:${now.minute}';

    basicData['date_mood'][index] = formattedDate;
    basicData["location"][index] = initProvince + ' ' + initCity + ' ' + initTown;
    basicData["province"][index] = initProvince;
    basicData["context_mood"][index] = contextController.text;
    basicData["note_case"]++;
    isSaved_mood = true;
  }

  void dispose() {
    // Clean up the controller when the widget is disposed.
    contextController.dispose();
    titleController.dispose();
    super.dispose();
  }

  /*final picker = ImagePicker();
  XFile? _imageFile;
  List<XFile>? _imageFiles;*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromRGBO(229, 220, 203, 1),
        appBar: AppBar(
          //backgroundColor: Color.fromRGBO(45, 73, 104, 1),
          //foregroundColor: Colors.white,
          title: Text('创建新的笔记'),
        ),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
              padding: EdgeInsets.fromLTRB(5,10,5,10),
              //height: 128,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                  blurStyle: BlurStyle.outer,
                  offset: Offset.zero,
                ),],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1.0,color: Colors.black26),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ClipOval(
                          child: Image(
                            image: AssetImage('assets/images/not_login.png'),
                          ),
                        ),
                        Text(basicData['username'],style: TextStyle(fontSize: 18),overflow: TextOverflow.ellipsis,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            setState(() {

                            });
                          },
                          child: Row(
                            children: [Icon(Icons.location_on,size: 18,),Text('Step 1 标记地点'),],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width* 0.3,
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 33,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.location_on,size: 18,color: Colors.black45,),
                        SizedBox(width: 8,),
                        Text('您目前选择的是 $initProvince $initCity $initTown ',style: TextStyle(
                          color: Colors.black45,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          Pickers.showAddressPicker(
                            context,
                            initProvince: initProvince,
                            initCity: initCity,
                            initTown: initTown,
                            onConfirm: (p, c, t) {
                              setState(() {
                                initProvince = p;
                                initCity = c;
                                initTown = t!;
                              });
                            },
                          );
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Icon(Icons.assured_workload_outlined,size: 18,),Text('重新标记地点'),],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            setState(() {

                            });
                          },
                          child: Row(
                            children: [Icon(Icons.photo,size: 18,),Text('Step 2 上传图片'),],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width* 0.3,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 5, 2),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),

                      alignment: Alignment.center,
                      child: selectedAsset_mood == null
                          ? TextButton(
                          onPressed: () {
                            setState(() {
                              selectPhoto_mood(context,
                                  basicData['note_case']);
                            });
                          },
                          child: Text("点击选择图片\n再次点击以刷新",style: TextStyle(color: Colors.black),))
                          : GestureDetector(
                        onTap: () {
                          setState(() {
                            selectPhoto_mood(context,
                                basicData["note_case"]);
                          });
                        },
                        child: Container(
                          /*child: AssetEntityImage(selectedAsset_mood!,
                              isOriginal: true),*/
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetEntityImageProvider(selectedAsset_mood!,
                                isOriginal: true),fit: BoxFit.fill)
                          ),
                        )

                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            setState(() {

                            });
                          },
                          child: Row(
                            children: [Icon(Icons.note_add,size: 18,),Text('Step 3 书写笔记'),],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width* 0.3,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                        blurStyle: BlurStyle.outer,
                        offset: Offset.zero,
                      ),],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1.0,color: Colors.black26),
                    ),
                    margin: EdgeInsets.fromLTRB(8, 10, 8, 10),
                    padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                    child: TextField(
                      controller: contextController,
                      maxLines: 20,
                      decoration: InputDecoration(
                          hintText: "在这里输入笔记内容",
                          //border: OutlineInputBorder()
                        ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      //LikeButton(likeCount: likes,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                      ),
                      /*Text("发布于 ${province}   ${releaseTime}  ",style: TextStyle(
                        color: Colors.black45,
                      ),),*/

                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            isSaved_mood == false
                ? ElevatedButton(
                onPressed: () {
                  if (selectedAsset_mood == null) {
                    Get.snackbar('提示', '您还未选择图片，请重新选择。',
                        duration: Duration(milliseconds: 800));
                  } else {
                    setState(() {
                      saveMoodData();
                      saveBasicData();

                      Get.snackbar('提示', '保存成功~',
                          duration: Duration(milliseconds: 800));
                    });
                  }
                },
                child: Text('保存'))
                : ElevatedButton(
                onPressed: () {
                  selectedAsset_mood == null;
                  Get.back();
                },
                child: Text('返回')),
            /*Container(
              height: MediaQuery.of(context).size.height * 1.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/treehole_bkgnd.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Opacity(
                opacity: 1,
                child: Container(
                  height: 400,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Opacity(opacity: 0.7,child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          controller: titleController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: '简单描述一下吧',
                            labelStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      )
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      TextField(
                          controller: contextController,
                          maxLines: 10,
                          decoration: InputDecoration(
                              hintText: "请输入多行文本",
                              border: OutlineInputBorder()),
                        ),

                      //Text("点击上传图片：",style: TextStyle(color: Colors.white),),

                      isSaved_mood == false
                          ? ElevatedButton(
                          onPressed: () {
                            if (selectedAsset_mood == null) {
                              Get.snackbar('提示', '您还未选择图片，请重新选择。',
                                  duration: Duration(milliseconds: 800));
                            } else {
                              setState(() {
                                saveMoodData();
                                saveBasicData();

                                Get.snackbar('提示', '保存成功~',
                                    duration: Duration(milliseconds: 800));
                              });
                            }
                          },
                          child: Text('保存'))
                          : ElevatedButton(
                          onPressed: () {
                            selectedAsset_mood == null;
                            Get.back();
                          },
                          child: Text('返回'))
                    ],
                  ),
                  decoration: BoxDecoration(
                    //color: Colors.white,
                      border: Border.all(
                        //color: Colors.white,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ),
            ),*/
          ],
        ));
  }
}
