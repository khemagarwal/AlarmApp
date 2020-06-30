import 'package:flutter/cupertino.dart';

class clock extends StatefulWidget {
  @override
  _clockState createState() => _clockState();
}

class _clockState extends State<clock> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("clock"),
      ),
    );
  }
}
