import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:m_karmik/login.dart';
// import 'duty/duties.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dark Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Duty(),
    );
  }
}

// ==========CHANGE BELOW THIS==============================

class Duty extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DutyState();
  }
}
class _DutyState extends State<Duty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(child: Text('Cards List')
              // padding: const EdgeInsets.all(8.0), child: Text('m-Karmik App')
            ),
            Expanded(
              child: buildNicLogo(),
            ),
          ],
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: ListView(
                children: <Widget>[

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // todo: ImageAssets
  Widget buildNicLogo() {
    AssetImage assetImage = AssetImage('images/nic2.png');
    Image image = Image(
      image: assetImage,
      width: 100.0,
      height: 100.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(left: 50.0, top: 18.0, bottom: 20.0),
    );
  }
}