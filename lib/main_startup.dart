import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mlm_dashboard/Screens/login.dart';
import 'package:mlm_dashboard/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MainTwo extends StatefulWidget {
  const MainTwo({Key key}) : super(key: key);

  @override
  _MainTwo createState() => _MainTwo();
}

class _MainTwo extends State<MainTwo> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: const LogIn());
  }
}
