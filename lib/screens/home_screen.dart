import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/widgets/recent_orders.dart';




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
             child: Text('Cart (10)', style: TextStyle(fontSize: 20,color: Colors.white),)
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
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: Icon(Icons.close),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
             SizedBox(height: 20,),
              RecentOrders(),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text('Nearby Restaurants', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                  SizedBox(height: 20,),
                  Column(
                    children: restaurants.map((e) {
                      return Container(
                        width: double.infinity,
                        height: 170,
                        margin: EdgeInsets.only(bottom: 17),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
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
                                Text(e.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                  SizedBox(height: 15,),
                                Container(
                                    width: 135,
                                    child: Text(e.address,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))),
                                  SizedBox(height: 15,),
                                Text('0.2 miles away', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
                                ],
                              )
                            ],
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
