import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'shared_service.dart';

Widget _defaultHome = new LoginPage();

// checking weather user is loggedIn or not
//on that basis redirection of page will be done
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set default home.

  // Get result of the login function.
  bool _isLoggedIn = await SharedService.isLoggedIn();
  if (_isLoggedIn) {
    _defaultHome = new HomePage();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        accentColor: Colors.black,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.white),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        '/home': (BuildContext context) => new HomePage(),
        '/login': (BuildContext context) => new LoginPage()
      },
    );
  }
}
