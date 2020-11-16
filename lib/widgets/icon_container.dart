import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;

  const IconContainer({Key key, @required this.size})
      : assert(size != null && size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(this.size * 0.15),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 25,
              offset: Offset(0, 15.0),
            ),
          ]),
      padding: EdgeInsets.all(this.size * 0.15),
      child: Center(
        child: SvgPicture.asset('assets/smile.svg',
            width: this.size * 0.75, height: this.size * 0.75),
      ),
    );
  }
}
