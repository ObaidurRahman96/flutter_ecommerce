import 'package:e_commerce/ui/colors.dart';
import 'package:e_commerce/ui/dimensions.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/icon_and_text_widget.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,size: 15,) ),
            ),
            SizedBox(width: 10),
            SmallText(text: '4.5', color: Colors.black54),
            SizedBox(width: 10),
            SmallText(text: '1289', color: Colors.black54),
            SizedBox(width: 10),
            SmallText(text: 'Comments', color: Colors.black54),
          ],
        ),
        SizedBox(height:Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,),
            IconAndTextWidget(icon: Icons.location_on,
                text: "1.7KM",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(icon: Icons.access_time_rounded,
                text: "32 min",
                iconColor: AppColors.iconColor2)
          ],
        )
      ],
    );
  }
}
