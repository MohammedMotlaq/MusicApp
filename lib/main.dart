import 'package:flutter/material.dart';
import 'package:music_app/screen/musicui.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatefulWidget {

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: MusicUI(),);
  }
}
