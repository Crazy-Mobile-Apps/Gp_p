import 'package:flutter/material.dart';

// method for App bar
AppBar collageAppBar(String appBarText, BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      appBarText,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.elliptical(MediaQuery.of(context).size.height, 100.0),
      ),
    ),
    toolbarHeight: 100.0,
  );
}
