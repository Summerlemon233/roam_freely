import 'package:flutter/material.dart';
import 'package:roam_freely/system/common_widgets.dart';

class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.85,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.explore),
                      Text(
                        "线下·探索",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),],
                  ),),
                  /*Container(
                    alignment: Alignment.center,
                    height: 50,
                    //width: 100,
                    margin: EdgeInsets.fromLTRB(
                        20, 3, 0, 6),
                    child:

                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),*/
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.refresh)),
                ],
              ),
            ),

            funcCard(color: Colors.black,Area: '地图', AssetPath: 'assets/images/map_example.png', onTapFunc: (){
              setState(() {

              });

            }),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.book),
                      Text(
                        "线上·发现",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),],
                  ),),
                  /*Container(
                    alignment: Alignment.center,
                    height: 50,
                    //width: 100,
                    margin: EdgeInsets.fromLTRB(
                        20, 3, 0, 6),
                    child:

                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),*/
                  SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){}, child: Icon(Icons.refresh)),
                ],
              ),
            ),
            funcCard(
                color: Colors.black,
                Area: '旅行笔记',
                AssetPath: 'assets/images/notes.jpg',
                onTapFunc: () {
                  setState(() {

                  });
                }),
            Container(
              height: 10,
            ),




            //Divider(),
            momentCard(
                AssetPath: 'assets/images/example0.jpg',
                onTapFunc: () => setState(() {}),
                AvatarPath: 'assets/images/defaultAvatar0.jpg',
                userName: "小北o_O",
                releaseTime: "7月13日 14:21",
                textContent: "吹吹海风！Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                location: "山东省 烟台市 开发区 金沙滩公园",
                province: "山东",
            likes: 13,),
            // Divider(),
            momentCard(
                AssetPath: 'assets/images/example1.jpg',
                onTapFunc: () => setState(() {}),
                AvatarPath: 'assets/images/defaultAvatar1.jpg',
                userName: "小南o_O",
                releaseTime: "8月12日 15:21",
                textContent: "高原风景！Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                location: "青海省 西宁市 湟中区 莲花湖公园",
                province: "青海",likes: 9,),
          ],
        ),
      ), /*ListView(
      children: [
        Row(
          children: <Widget>[
            TextFormField(
              style: TextStyle(
                  //fontFamily: "Helvetica_Neue",
                  ),
              decoration: InputDecoration(
                labelText: '搜点什么吧'
                    //'${basicData['email']}'
                    '',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(Icons.search_rounded)),
          ],
        ),
        //TODO
      ],
    )*/
    );
  }
}
