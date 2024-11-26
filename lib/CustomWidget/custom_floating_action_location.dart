import 'package:flutter/material.dart';

class CustomFloatingActionLocation extends FloatingActionButtonLocation {
  @override
  Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
    double x = scaffoldGeometry.scaffoldSize.width *0.02;
    double y = scaffoldGeometry.scaffoldSize.height *0.8;
    return Offset(x, y);
  }
}
