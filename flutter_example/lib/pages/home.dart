import 'package:flutter/material.dart';
import 'package:flutterexample/my_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        title: Text('Home Page'),
      ),
      body: MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<MyItem> itemList = [
    MyItem.fromTitle('A Title'),
    MyItem.fromTitle('B Title'),
    MyItem.fromTitle('C Title'),
    MyItem.fromTitle('D Title')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                itemList[index].title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue
                ),
              ),
              onTap: (){
                print('${itemList[index].title} Clicked');
                Navigator.pushNamed(context, '/detail');
              },
            ),
          );
        });
  }
}
