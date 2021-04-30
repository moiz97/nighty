import 'package:flutter/material.dart';
import 'screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          FocusScope.of(context).requestFocus(new FocusNode());
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nighty',
        home: Mainscreen(),
      ),
    );
  }
}
