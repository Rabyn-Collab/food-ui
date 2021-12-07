import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ui/data/data.dart';



class RecentOrders extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Orders', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Container(
          height: 120,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: recentOrders.length,
              itemBuilder:(context, index){
                final order = recentOrders[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.black)
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 325,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            order.food.imageUrl, width: 135, height: 120, fit: BoxFit.cover,),
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
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text(order.restaurant.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                              SizedBox(height: 5,),
                              Text(order.date,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
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
