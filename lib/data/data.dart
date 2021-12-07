
/*
Food Model single
final _burrito  = 'assets/images/burrito.jpg', Burrito, 8.99
final _steak = 'assets/images/steak.jpg', 'Steak', 17.99
final _pasta = 'assets/images/pasta.jpg','Pasta', 14.99
final _ramen = 'assets/images/ramen.jpg','Ramen', 15.99
final _pancakes= 'assets/images/pancakes.jpg',  'Pancakes', 9.99
final _burger = 'assets/images/burger.jpg', 'Burger', 14.99
final _pizza = 'assets/images/pizza.jpg', 'Pizza', 11.99
final _salmon = 'assets/images/salmon.jpg', 'Salmon Salad', 12.99
 */

import 'package:food_ui/models/food.dart';
import 'package:food_ui/models/order.dart';
import 'package:food_ui/models/restaurant.dart';

  final _burrito = Food(price: 8.99, name: 'Burrito', imageUrl: 'assets/images/burrito.jpg');
  final _steak = Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 17.99);
final _pasta = Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 14.99);
final _ramen = Food(imageUrl: 'assets/images/ramen.jpg',name: 'Ramen', price: 15.99);
final _pancakes= Food(imageUrl: 'assets/images/pancakes.jpg',  name: 'Pancakes', price: 9.99);
final _burger = Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 14.99);
final _pizza = Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 11.99);
final _salmon = Food(imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 12.99);




/*
Restaurant Model single

final _restaurant0 = 'assets/images/restaurant0.jpg', 'Restaurant 0', '200 Main St, New York, NY', 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],

final _restaurant1 =  'assets/images/restaurant1.jpg', 'Restaurant 1', '200 Main St, New York, NY', 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],

final _restaurant2 = 'assets/images/restaurant2.jpg', 'Restaurant 2', '200 Main St, New York, NY', 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],

final _restaurant3 = 'assets/images/restaurant3.jpg', 'Restaurant 3', '200 Main St, New York, NY', 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],

final _restaurant4 = 'assets/images/restaurant4.jpg', 'Restaurant 4', '200 Main St, New York, NY', 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],

 */

final _restaurant0 = Restaurant(
  name: 'Restaurant 0',
  imageUrl: 'assets/images/restaurant0.jpg',
  address: '200 Main St, New York, NY',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon]
);

final _restaurant1 =  Restaurant(imageUrl: 'assets/images/restaurant1.jpg',
    name: 'Restaurant 1', address: '200 Main St, New York, NY', rating: 4,
menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza]);

final _restaurant2 = Restaurant(imageUrl: 'assets/images/restaurant2.jpg', name: 'Restaurant 2',
    address: '200 Main St, New York, NY', rating: 4,
menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon]);

final _restaurant3 = Restaurant(imageUrl: 'assets/images/restaurant3.jpg', name: 'Restaurant 3',
    address: '200 Main St, New York, NY', rating: 2,
menu: [_burrito, _steak, _burger, _pizza, _salmon]);

final _restaurant4 = Restaurant(imageUrl: 'assets/images/restaurant4.jpg', name: 'Restaurant 4',
    address: '200 Main St, New York, NY', rating: 3,
menu: [_burrito, _ramen, _pancakes, _salmon]);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];


List<Order> recentOrders = [
  Order(
    date: 'Nov 10, 2019',
    food: _steak,
    restaurant: _restaurant2,

  ),
  Order(
    date: 'Nov 8, 2019',
    food: _ramen,
    restaurant: _restaurant0,
  ),
  Order(
    date: 'Nov 5, 2019',
    food: _burrito,
    restaurant: _restaurant1,
  ),
  Order(
    date: 'Nov 2, 2019',
    food: _salmon,
    restaurant: _restaurant3,
  ),
  Order(
    date: 'Nov 1, 2019',
    food: _pancakes,
    restaurant: _restaurant4,
  ),
];
 // make list of order named recentOrders

/*
     date: 'Nov 10, 2019',
      food: _steak,
      restaurant: _restaurant2,

     date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _restaurant0,

      date: 'Nov 5, 2019',
      food: _burrito,
      restaurant: _restaurant1,

       date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,

         date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _restaurant4,

 */
