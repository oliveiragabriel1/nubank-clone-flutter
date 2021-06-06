import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  final String logo = "https://logospng.org/download/nubank/logo-nu-nubank-roxo-icon-2048.png";

  final bool showMenu;
  final VoidCallback onTap;
  
  const MyAppBar({Key? key, required this.showMenu, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.purple[800],
            height: MediaQuery.of(context).size.height * 0.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.network(logo,
                      height: 35,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text("Gabriel", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                    )
                  ],
                ),
                Icon(showMenu ? Icons.expand_less : Icons.expand_more)
              ],
            ),
          ),
        ),
      ],
    );
  }
}