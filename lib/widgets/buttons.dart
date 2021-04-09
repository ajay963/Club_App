import 'package:club_app/components/colors.dart';
import 'package:flutter/material.dart';

class NuemorphicsCircularButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  NuemorphicsCircularButton({@required this.onTap, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 52,
        width: 52,
        child: IconTheme(data: Theme.of(context).iconTheme, child: Icon(icon)),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kLtGrey,
            gradient: RadialGradient(
                colors: [kLtGrey, Colors.white],
                center: Alignment.topLeft,
                focal: Alignment.bottomRight),
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.95),
                  blurRadius: 24,
                  offset: Offset(24, 24)),
              BoxShadow(
                  color: kDarkGrey.withOpacity(0.5),
                  blurRadius: 24,
                  offset: Offset(24, 24))
            ]),
      ),
    );
  }
}

class NuemorphicsRoundedButton extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final double borderRadius;
  NuemorphicsRoundedButton(
      {@required this.onTap, @required this.child, this.borderRadius = 10});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        height: 52,
        width: 52,
        child: child,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(borderRadius),
            color: kLtGrey,
            gradient: RadialGradient(
                colors: [kLtGrey, Colors.white],
                center: Alignment.topLeft,
                focal: Alignment.bottomRight),
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.95),
                  blurRadius: 24,
                  offset: Offset(24, 24)),
              BoxShadow(
                  color: kDarkGrey.withOpacity(0.5),
                  blurRadius: 24,
                  offset: Offset(24, 24))
            ]),
      ),
    );
  }
}
