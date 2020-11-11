import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Halaman Dashboard",
        ),
      ),
      body: RaisedButton(
        child: Text("Back To Previous Page"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
