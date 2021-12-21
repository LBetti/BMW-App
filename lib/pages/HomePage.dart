import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool tapped = false;
    Color myColor = Colors.black;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: (Text('iX XDrive50')),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color(0xFFB71C1C)]),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(1)),
            Row(
              children: [
                CupertinoButton(
                    child: Text(
                      'Check Status',
                      style: TextStyle(color: Color(0xFFB71C1C)),
                    ),
                    onPressed: () {}),
              ],
            ),
            Padding(padding: EdgeInsets.all(30)),
            Stack(
              children: [
                Text(
                  ' ALL GOOD ',
                  style: TextStyle(fontSize: 70, color: Colors.white),
                ),
                Container(
                    height: size.width * 0.66,
                    child: Image.asset('assets/xdrive50.png'))
              ],
            ),
            Padding(padding: EdgeInsets.all(size.width * 0.127)),
            Text('Charging... ',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            Stack(
              children: [
                Center(
                  child: Container(
                      child: Center(
                          child: Text(
                        '73% / 457 km',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )),
                      height: size.width * 0.2,
                      width: size.width * 0.8,
                      color: Colors.grey.withOpacity(0.5)),
                ),
                Center(
                    child: Container(
                        height: 5,
                        width: size.width * 0.55,
                        color: Colors.black)),
              ],
            ),
            Padding(padding: EdgeInsets.all(size.width * 0.0789)),
            Stack(
              children: [
                Container(
                    child: Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(right: size.width * 0.056)),
                        Icon(
                          Icons.lock_outline,
                          size: 50,
                          color: Colors.white,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: size.width * 0.07)),
                        Icon(
                          Icons.lock_open_outlined,
                          size: 50,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: size.width * 0.07)),
                        Icon(
                          Icons.flashlight_off_sharp,
                          size: 50,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: size.width * 0.07)),
                        Icon(
                          Icons.electrical_services_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: size.width * 0.07)),
                        Icon(
                          Icons.bluetooth_searching_sharp,
                          size: 50,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    height: size.width * 0.2,
                    width: size.width * 1,
                    color: Colors.grey.withOpacity(0.5)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
