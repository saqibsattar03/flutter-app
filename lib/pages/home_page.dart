import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Welcome to Abroad!!!'),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
