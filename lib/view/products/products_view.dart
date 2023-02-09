import 'package:ecommerce/res/colors.dart';
import 'package:ecommerce/res/components/text_widget.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.ligtRed,
          title: TextWidget(
            title: 'App Name',
          ),
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(6),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: screenHight * 0.3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                // margin: EdgeInsets.all(6),
                height: screenHight * 0.3,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.gray.withOpacity(0.4),
                      offset: Offset(1.0,1.0),
                      blurRadius: 10,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: screenHight * 0.20,
                      decoration: BoxDecoration(
                        // border: Border.all(color: AppColor.ligtRed),
                        image: DecorationImage(
                          image: AssetImage('images/shoppingbag.png'),
                          // fit: BoxFit.contain
                        )
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextWidget(title: 'Product Name',textSize: 19.0,textFontWeight: FontWeight.w600,),
                    const SizedBox(height: 4,),
                    TextWidget(title: 'Product short descripition')
                  ],
                ),
              );
            })
    );
  }
}