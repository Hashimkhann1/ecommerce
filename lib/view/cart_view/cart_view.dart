import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:flutter/material.dart';


class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: TextWidget(title: 'Cart',),
          backgroundColor: AppColor.ligtRed,
        ),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.66,
            child: ListView.builder(
              itemCount: 3,
                itemBuilder: (context , index) {
                return Container(
                  margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
                  child: Column(
                    children: [
                      Container(
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.18,
                        decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.gray.withOpacity(0.7),
                                  offset: Offset(1.0,1.0),
                                  blurRadius: 10.0,
                                  spreadRadius: 3
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: screenWidth * 0.31,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('images/shoppingbag.png'),
                                      fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 6.0,bottom: 5.0),
                              width: screenWidth * 0.44,
                              decoration: BoxDecoration(
                                // border: Border.all(color: AppColor.ligtRed)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(title: 'Product Name',textSize: 17.0,textFontWeight: FontWeight.w600,textColor: AppColor.ligtRed,),
                                      TextWidget(title: 'Product short descripiton this product',textSize: 15.0,),
                                    ],
                                  ),
                                  TextWidget(title: '\$ 999',textSize: 20.0,textFontWeight: FontWeight.w600,textColor: AppColor.golden,)
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(right: 5.0,top: 2.0),
                                child: Icon(Icons.clear,color: AppColor.golden,size: 28.0,),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
            }),
          ),
          const SizedBox(height: 16.0,),
          Container(
            height: screenHeight * 0.07,
            width: screenWidth * 0.95,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: AppColor.golden,
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(title: 'Total Amount',textSize: 18.0,textFontWeight: FontWeight.w600,textColor: AppColor.ligtRed,),
                TextWidget(title: '\$ 9999',textSize: 18.0,textFontWeight: FontWeight.w600,)
              ],
            ),
          )
        ],
      )
    );
  }
}
