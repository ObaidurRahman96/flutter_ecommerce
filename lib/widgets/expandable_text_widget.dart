import 'package:e_commerce/ui/dimensions.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText= true;

  double textHeight= Dimensions.screenHeight/5.63;
//intro text split into two state
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHalf=widget.text.substring(0, textHeight.toInt());
      secondHalf= widget.text.substring(textHeight.toInt()+1, widget.text.length);
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf): Column(
        children: [
          SmallText(text: hiddenText?(firstHalf+"..."):(firstHalf+ secondHalf));
        ],
      ),
    );
  }
}
