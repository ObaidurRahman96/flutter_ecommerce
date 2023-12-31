import 'package:e_commerce/ui/dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  int maxLines;
  BigText({super.key, this.color= const Color(0xFF332d2b), required this.text,
  this.size=0,
    this.maxLines=1,
  this.overflow=TextOverflow.ellipsis
  });

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize:size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      ),

    );
  }
}
