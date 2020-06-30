import 'package:flutter/cupertino.dart';

class stopwatch extends StatefulWidget {
  @override
  _stopwatchState createState() => _stopwatchState();
}

class _stopwatchState extends State<stopwatch> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Stopwatch"),
      ),
    );
  }
}
