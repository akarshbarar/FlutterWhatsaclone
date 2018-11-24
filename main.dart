import 'package:flutter/material.dart';
import 'package:ripozo/calls.dart';
import 'package:ripozo/camera.dart';
import 'package:ripozo/chats.dart';
import 'package:ripozo/status.dart';

void main()=>runApp(new WhatsApp());

class WhatsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "My WhatsApp",
      theme:new ThemeData(
        primaryColor:new Color(0xff075e54),
        accentColor: new Color(0xff25d366),
      ),
      debugShowCheckedModeBanner: false,
      home:new WhatsAppHome(),
    );
  }
}
class WhatsAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new WhatsAppState();
  }
}
class WhatsAppState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController t;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    t=new TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: EdgeInsets.only(right: 5.0)),
          new Icon(Icons.more_vert),
        ],
        bottom: new TabBar(
          controller: t,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.camera_alt),),//Camera
            new Tab(text: "CHATS"),//Chat
            new Tab(text: "STATUS",),//Status
            new Tab(text: "CALLS",),//Calls
          ],

        ),
      ),
      body: new TabBarView(
        controller: t,
          children:<Widget>[
            new Camera(),
            new Chats(),
            new Status(),
            new Calls(),
          ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: (){},
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message,color: Colors.white,),
      ),

    );
  }
}
