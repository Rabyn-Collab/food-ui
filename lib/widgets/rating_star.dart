import 'package:flutter/material.dart';



class RatingStar extends StatelessWidget {

 final int ratingStar;
 RatingStar(this.ratingStar);

 String star = '';
  @override
  Widget build(BuildContext context) {
for(int i =0; i<ratingStar; i++){

  star += '⭐';
}
    return Text(star, style: TextStyle(fontSize: 15,));
  }
}
