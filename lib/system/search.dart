import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roam_freely/system/city_search.dart';

const searchList = [
  '北京',
  '上海',
  '广州',
  '深圳',
  '杭州',
  '武汉',
  '西安',
];

const recentSuggest = [
  '北京',
  '上海',
  '广州',
  '深圳',
  '杭州',
  '武汉',
  '西安',
];

class SearchBarDelegate extends SearchDelegate<String> {
  //清空按钮
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = "", //搜索值为空
      )
    ];
  }

  //返回上级按钮
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () => Get.back(), //点击时关闭整个搜索页面
    );
  }

  //搜到到内容后的展现
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  //设置推荐
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionsList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: [
          ListTile(
            title: Text("热门城市推荐"),
            leading: Icon(Icons.local_fire_department),
          ),
          Divider(),
          Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width,
          child:ListView.builder(
            itemCount: suggestionsList.length,
            itemBuilder: (context, index) => ListTile(
              onTap: ()
              {
                Get.to(city_search(),arguments: suggestionsList[index].substring(0, query.length));
              },
              leading: Icon(Icons.location_city),
              subtitle: Text("中国大陆"),
              title: RichText(
                //富文本
                text: TextSpan(
                    text: suggestionsList[index].substring(0, query.length),
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
                    children: [
                      TextSpan(
                          text: suggestionsList[index].substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
            ),
          ),),

        ],
      )

    );

  }
}
