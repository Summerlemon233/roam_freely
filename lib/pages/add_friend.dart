import 'package:flutter/material.dart';

class add_friend extends StatefulWidget {
  const add_friend({super.key});

  @override
  State<add_friend> createState() => _add_friendState();
}

class _add_friendState extends State<add_friend> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("添加好友"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //Icon(Icons.person_add_alt_1),
                        Text(
                          "通过好友代码",
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
                    SizedBox(width: 100,),
                    //ElevatedButton(onPressed: (){}, child: Icon(Icons.refresh)),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextField(
                controller: _controller,
                maxLines: 1,
                decoration: InputDecoration(
                    labelText: '输入好友代码',
                    border: OutlineInputBorder(),
                    hintText: "不区分大小写"),
              ),

              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  // 点击确认按钮后的操作
                  final friendCode = _controller.text;
                  print('添加好友：$friendCode');
                },
                child: Text('确认'),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //Icon(Icons.person_add_alt_1),
                        Text(
                          "扫描二维码",
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
                    SizedBox(width: 100,),
                    //ElevatedButton(onPressed: (){}, child: Icon(Icons.refresh)),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // 点击确认按钮后的操作


                },
                child: Text('点击扫描'),
              ),
            ],
          ),
        ),


        ),

    );
  }
}
