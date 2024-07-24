import 'package:e_commerce/ui/colors.dart';
import 'package:e_commerce/ui/dimensions.dart';
import 'package:e_commerce/widgets/app_icon.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/icon_and_text_widget.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned (
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/pngwing.com (1).png"
                    )
                    ),
                  color: Colors.blueAccent
                  ),
                ),

              ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                      
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)
                  ),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Combo Burger With Drinks"),
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
                ),

          ))
        ],
      ),

    );
  }
}
