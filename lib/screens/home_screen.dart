import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/widgets/rating_star.dart';
import 'package:food_ui/widgets/recent_orders.dart';
import 'package:food_ui/widgets/resaturant_detail.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.person)
        ),
        title: Text('Food Delivery'),
        actions: [
         TextButton(
             onPressed: (){},
             child: Text('Cart (10)', style: TextStyle(fontSize: 20.sp,color: Colors.white),)
         )
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Food or Restaurant',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                  suffixIcon: Icon(Icons.close),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
             SizedBox(height: 20.h,),
              RecentOrders(),
              SizedBox(height: 20.h,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text('Nearby Restaurants', style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),),
                  SizedBox(height: 20.h,),
                  Column(
                    children: restaurants.map((e) {
                      return InkWell(
                        onTap: (){
                     Get.to(() => RestaurantDetail(e), transition: Transition.leftToRight);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 170.h,
                          margin: EdgeInsets.only(bottom: 17.h),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.r),
                                  child: Image.asset(
                                      e.imageUrl,
                                    height: 170,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(e.name, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),),
                                    SizedBox(height: 15.h,),
                                    RatingStar(e.rating),
                                    SizedBox(height: 15.h,),
                                  Container(
                                      width: 135,
                                      child: Text(e.address,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500))),
                                    SizedBox(height: 15.h,),
                                  Text('0.2 miles away', style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),

            ],
          ),
        ),
    );
  }
}
