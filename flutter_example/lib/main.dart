import 'package:flutter/material.dart';
import 'my_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Example'),
          centerTitle: true,
        ),
        body: Container(
          child: MyListView(),
        ),
      ),
    );
  }
}

class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<MyItem> myItemList = [
    MyItem.fromTitle('A Title'),
    MyItem.fromTitle('B Title'),
    MyItem.fromTitle('C Title'),
    MyItem.fromTitle('D Title')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: myItemList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/a.jpg'),
              ),
              contentPadding: EdgeInsets.all(10),
              title: Text(
                myItemList[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              onTap: () {
                print('${myItemList[index].title} Clicked');
              },
            ),
          );
        });
  }
}
