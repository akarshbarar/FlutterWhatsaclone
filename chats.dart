import 'package:flutter/material.dart';
import 'model.dart';

class Chats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ChatState();
  }
}
class ChatState extends State<Chats>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: details.length,
      itemBuilder: (context,i){
        return new Column(
          children: <Widget>[
            new Divider(height: 10.0,),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Colors.grey,
                backgroundColor: Colors.blue,
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(details[i].name,style: new TextStyle(fontWeight: FontWeight.bold),),
                  new Text(details[i].time,style: new TextStyle(color: Colors.grey),)
                ],
              ),
              subtitle: new Container(
                child: new Text(details[i].message,style: new TextStyle(color:Colors.black),),
              ),
            ),
          ],
        );
      },
    );
  }
}