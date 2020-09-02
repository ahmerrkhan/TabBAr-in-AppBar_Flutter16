import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: Color(0xff075E54),
        elevation: 10.0,
        actions: [
          IconButton(
              icon: Icon(Icons.search), onPressed: () => print("Search")),
          IconButton(
              icon: Icon(Icons.more_vert), onPressed: () => print("settings")),
        ],
        bottom: TabBar(
            //this is bottom tabbar, using controller
            controller: _tabController, //with ticket provider and vsync
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ]),
      ),
      body: Container(
          //color: Colors.black,
          ),
    );
  }
}
