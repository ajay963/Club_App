import 'package:flutter/material.dart';

class LineDiveder extends StatelessWidget {
  final double width;
  LineDiveder({@required this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: width,
      decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.overlay,
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.6),
            Colors.white.withOpacity(0.6)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({@required this.child});
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
        height: deviceSize.height,
        width: deviceSize.width,
        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.overlay,
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.6),
              Colors.white.withOpacity(0.6)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
      child
    ]);
  }
}
