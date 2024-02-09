import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Chess Board'),
        ),
        body:SingleChildScrollView( child:Column(children: [
         
          ColumnLinewhite(),
          ColumnLineBlack(),
          ColumnLinewhite(),
          ColumnLineBlack(),
          ColumnLinewhite(),
          ColumnLineBlack(),
          ColumnLinewhite(),
          ColumnLineBlack(),
        ])),
      ),
    );
  }
}

ColumnLineBlack() {
  return Row(
    children: [
      CustomContainerBlack(),
      CustomContainerWhite(),
      CustomContainerBlack(),
      CustomContainerWhite(),
    ],
  );
}

ColumnLinewhite() {
  return Row(
    children: [
      CustomContainerWhite(),
      CustomContainerBlack(),
      CustomContainerWhite(),
      CustomContainerBlack(),
    ],
  );
}

CustomContainerBlack() {
  return Container(
    height: 100,
    width: 102.5,
    color: Colors.black,
  );
}

CustomContainerWhite() {
  return Container(
    height: 100,
    width: 102.5,
    color: Colors.white,
  );
}

List<Row> generateContainers(containersSize) {
  List<Row> containers = [];
  for (int i = 0; i < containersSize; i++) {
    containers.add(ColumnLineBlack());
  }
  return containers;
}


