import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'admin_app',
    darkTheme: ThemeData.dark(),
    home: HomePage(),
  ));
}
