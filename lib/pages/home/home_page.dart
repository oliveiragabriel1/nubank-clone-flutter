import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/widget/my_app_bar.dart';
import 'package:nubank_clone/pages/home/widget/my_dots_app.dart';
import 'package:nubank_clone/pages/home/widget/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;
  late int _currentIndex;
  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageViewApp(
            top: _screenHeight * 0.26,
            onChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
              top: _screenHeight * 0.70,
              child: MyDotApp(currentIndex: _currentIndex))
        ],
      ),
    );
  }
}
