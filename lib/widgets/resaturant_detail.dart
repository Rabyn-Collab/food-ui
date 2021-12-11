import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/models/restaurant.dart';
import 'package:food_ui/widgets/rating_star.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class RestaurantDetail extends StatelessWidget {
  final Restaurant restaurant;
  RestaurantDetail(this.restaurant);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 260.h,
          child: Stack(
            children: [
              Image.asset(
                restaurant.imageUrl,
                width: double.infinity,
                height: 260.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close,
                          size: 30,
                          color: Colors.white,
                      )),
                    Icon(Icons.favorite, size: 30.sp, color: Colors.pink)
                  ],
                ),
              )
            ],
          ),
        ),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  child:   Column(
    children: [

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
     Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        Text(restaurant.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
        SizedBox(height: 5,),
        RatingStar(restaurant.rating),
         SizedBox(height: 5,),
        Text(restaurant.address, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
       ],
     ),
           Text('0.2miles away', style: TextStyle(fontSize: 16),)
         ],
       ),

      SizedBox(height: 15,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       ElevatedButton(
         style: ElevatedButton.styleFrom(
           primary: Colors.orange,
             minimumSize: Size(120, 40),
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12)
             )
         ),

           onPressed: (){},
           child: Text('Reviews', style: TextStyle(fontSize: 17),)
       ),
       ElevatedButton(
           style: ElevatedButton.styleFrom(
               primary: Colors.orange,
               minimumSize: Size(120, 40),
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(12)
               )
           ),
           onPressed: (){},
           child: Text('Contacts', style: TextStyle(fontSize: 17),)),
     ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text('Menu', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
      ),
      Container(
        height: 360.h,
        child: GridView.builder(
          shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemCount: restaurant.menu.length,
            itemBuilder: (context, index){
              final food = restaurant.menu[index];
              return Stack(
                children: [
                  Container(
                    height: 170.w,
                     width: 170.w,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       image: DecorationImage(
                         image: AssetImage(food.imageUrl),
                         fit: BoxFit.cover
                       )
                     ),
                  ),
                  Container(
                    height: 170.w,
                    width: 170.w,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.black87.withOpacity(0.5),
                            Colors.black54.withOpacity(0.5),
                            Colors.black45.withOpacity(0.5),
                            Colors.black12.withOpacity(0.5),
                          ],
                          stops: [
                            0.5,
                            0.2,
                            0.4,
                            0.3
                          ]
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(food.name, style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
                        SizedBox(height: 4,),
                        Text('\$${food.price}',  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 17,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              );
            },
        ),
      ),

    ],
  ),
)

      ],
    ));
  }
}
