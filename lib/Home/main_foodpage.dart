import 'package:e_commerce/Home/food_page_body.dart';
import 'package:e_commerce/ui/colors.dart';
import 'package:e_commerce/ui/dimensions.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.only(top:Dimensions.height27,bottom: Dimensions.height10),
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: "Bangladesh", color: AppColors.mainColor),
                        Row(
                          children: [
                            SmallText(text: "Mymensingh", color: Colors.black54),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )

                      ],
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search,color: Colors.white, size: Dimensions.iconSize24,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FoodPageBody(),
          ],
        ),
    );
  }
}
