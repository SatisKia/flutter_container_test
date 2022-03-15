import 'package:flutter/material.dart';

import 'widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  double contentWidth  = 0.0;
  double contentHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    contentWidth  = MediaQuery.of( context ).size.width;
    contentHeight = MediaQuery.of( context ).size.height - MediaQuery.of( context ).padding.top - MediaQuery.of( context ).padding.bottom;

    double padding = 5;
    double size = contentWidth / 4 - padding * 2;
    double radius = size / 3;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius),
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, topLeft: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, topRight: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, bottomLeft: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, bottomRight: true),
                    ),
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, top: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, bottom: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, left: true),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(padding),
                    child: MyRoundedContainer(
                      width: size,
                      height: size,
                      color: Colors.grey,
                      borderRadius: MyBorderRadius(radius, right: true),
                    ),
                  ),
                ]
            ),
          ]
      ),
    );
  }
}
