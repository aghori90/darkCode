import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../shared_service.dart';

import 'widgets/widget_home_categories.dart';
import 'widgets/widget_report_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("Dashboard",
          style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                SharedService.logout().then(
                  (_) => Navigator.of(context).pushReplacementNamed('/login'),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                    child: Icon(Icons.power_settings_new, color: Colors.white,),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ]),
      // body: Text('aghori'),
      body: _uiSetup(),
    );
  }

  Widget _uiSetup() {
    return new Container(
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ListView(
                shrinkWrap: true, // for proper scrolling
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  DashboardItems(),
                  WidgetReportList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
