import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roam_freely/pages/add_note.dart';
import './tabs/searchpage.dart';
import './tabs/store.dart';
import './tabs/tour.dart';
import './tabs/user.dart';
import 'system/search.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List _pages = [
    searchpage(),
    tour(),
    store(),
    user(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        /*backgroundColor: Color.fromRGBO(45, 73, 104, 1),
            foregroundColor: Colors.white,*/
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("恣游"),
            Container(
              /*width: 100,
              height: 30,*/
              child: ElevatedButton(
                  style: ButtonStyle(elevation: MaterialStateProperty.all(2),
                    //maximumSize: MaterialStateProperty.all(const Size(10, 20)),
                  ),
                  onPressed: () {
                    setState(() {
                      showSearch(context: context, delegate: SearchBarDelegate());
                    });
                  }, child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //Text("搜索",style: TextStyle(fontSize: 20),),
                    Icon(Icons.search,size: 20,),
                  ],
                ),
              )),
            ),

            /*IconButton(
                onPressed: () {
                  setState(() {
                    showSearch(context: context, delegate: SearchBarDelegate());
                  });
                },
                icon: Icon(Icons.search)),*/
          ],
        ),
      ),
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton
        (
        onPressed: (){
          setState(() {
            Get.to(add_note());
          });
        },
        shape: StadiumBorder(),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: /*BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(),
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => setState(() {
                _currentIndex = 0;
              }),
            ),
            IconButton(
              icon: Icon(Icons.people),
            )
          ],
        ),
      )*/
      BottomNavigationBar(
        //backgroundColor: Color.fromRGBO(45, 73, 104, 1),
        //fixedColor: Color.fromRGBO(215, 169, 83, 1),
        //unselectedItemColor: Color.fromRGBO(229, 220, 203, 1),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "首页",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: "旅行",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: "商城",
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "我的",
            backgroundColor: Colors.blue,
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
