import 'package:flutter/material.dart';


class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;


    return Container(
      height: _height,
      width: _width,
      color: Colors.green,
    );
  }
}