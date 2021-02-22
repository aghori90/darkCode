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
      title: 'Image Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Menu(),
    );
  }
}

// ==========CHANGE BELOW THIS==============================

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                child: Text('Cards')
              // padding: const EdgeInsets.all(8.0), child: Text('m-Karmik App')
            ),
            Expanded(child: buildNicLogo(),),

          ],
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 40),
              child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  GestureDetector(
                    /*onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Login()));
                    },*/
                    child: Card(
                      // card 1:Profile
                      // color: Colors.white,
                      color: Colors.deepOrange,
                      elevation: 8.0,
                      // margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 20.0),
                      margin: EdgeInsets.all(10.0),
                      child: Stack(
                        children: <Widget>[
                          // buildNicBanner(),
                          Center(child: buildProfile()),
                          Container(
                              margin: EdgeInsets.only(top: 135.0, left: 58.0),
                              child: Text(
                                'Profile',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    /*onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Duty()));
                    },*/
                    child: Card(
                      // card 2:Duty
                      // color: Colors.white,
                      color: Colors.lightGreenAccent,
                      elevation: 8.0,
                      // margin: EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
                      margin: EdgeInsets.all(10.0),
                      child: Stack(
                        children: <Widget>[
                          // buildNicBanner(),
                          Center(child: buildDuty()),
                          Container(
                              margin: EdgeInsets.only(top: 135.0, left: 67.0),
                              child: Text(
                                'Duty',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  // todo: ImageAssets
  Widget buildNicBanner() {
    AssetImage assetImage = AssetImage('images/nic.png');
    Image image = Image(
      image: assetImage,
      width: 390.0,
      height: 300.0,
    );
    return Container(
      child: image,
      // margin: EdgeInsets.only(left: 10.0, top: 0.0, bottom: 20.0),
    );
  }

  // todo: ImageAssets
  Widget buildNicLogo() {
    AssetImage assetImage = AssetImage('images/nic2.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(left: 50.0, top: 18.0, bottom: 20.0),
    );
  }

  //todo: ImageAssets
  Widget buildProfile() {
    AssetImage assetImage = AssetImage('images/profile.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 2.0, bottom: 25.0),
    );
  }

  //todo: ImageAssets
  Widget buildDuty() {
    AssetImage assetImage = AssetImage('images/duty.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 5.0, bottom: 25.0),
    );
  }

  //todo: ImageAssets
  Widget buildContact() {
    AssetImage assetImage = AssetImage('images/contact.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 2.0, bottom: 23.0),
    );
  }

  //todo: ImageAssets
  Widget buildReport() {
    AssetImage assetImage = AssetImage('images/report.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 2.0, bottom: 22.0),
    );
  }

  //todo: ImageAssets
  Widget buildHelp() {
    AssetImage assetImage = AssetImage('images/help.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 2.0, bottom: 22.0),
    );
  }

  //todo: ImageAssets
  Widget buildFaq() {
    AssetImage assetImage = AssetImage('images/faq.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 2.0, bottom: 22.0),
    );
  }
}
