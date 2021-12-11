import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentOrders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Orders', style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),),
        SizedBox(height: 10.h,),
        Container(
          height: 120.h,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: recentOrders.length,
              itemBuilder:(context, index){
                final order = recentOrders[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    side: BorderSide(color: Colors.black)
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 8.r),
                    width: 325.w,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            order.food.imageUrl, width: 135.w, height: 120.h, fit: BoxFit.cover,),
                        ),
                        SizedBox(width: 16,),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(order.food.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text(order.restaurant.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text(order.date,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.orange,
                            child: Icon(Icons.add, color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
