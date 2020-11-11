import 'package:belajar1/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

import 'dashboard/dashboard.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "Flutter Dev",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          Icon(Icons.account_circle),
          Icon(Icons.person),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: RaisedButton(
              splashColor: Colors.blue,
              child: Text(
                "Go to Dashboard",
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Dashboard()));
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconWithLabel(
                  icon: Icons.call,
                  text: "Call",
                  iconColor: Colors.blue,
                  textColor: Colors.green,
                ),
                IconWithLabel(
                  icon: Icons.navigation,
                  text: "Route",
                  iconColor: Colors.yellow,
                  textColor: Colors.red,
                ),
                IconWithLabel(
                  icon: Icons.share,
                  text: "share",
                  iconColor: Colors.deepOrange,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
