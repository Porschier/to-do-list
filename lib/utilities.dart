import 'package:flutter/material.dart';

Color paint(String time)
{
  var color = Colors.black;
if (time =="today"){color=Colors.blue ;} else if (time == 'yesterday') {
  color==Colors.pink;
}else {
  color=Colors.lime;
}
return color;
}


