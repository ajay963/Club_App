import 'package:club_app/components/colors.dart';
import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  CircularButton({@required this.onTap, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 52,
        width: 52,
        child: IconTheme(data: Theme.of(context).iconTheme, child: Icon(icon)),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: kLtGrey, boxShadow: [
          BoxShadow(
              color: Colors.white, blurRadius: 24, offset: Offset(24, 24)),
          BoxShadow(color: kDarkGrey, blurRadius: 24, offset: Offset(24, 24))
        ]),
      ),
    );
  }
}
