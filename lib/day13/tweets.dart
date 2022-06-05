import 'package:flutter/material.dart';

Widget allTweets() {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        // ignore: prefer_const_constructors
        child: CircleAvatar(
          backgroundImage: const NetworkImage(
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fknowyourmeme.com%2Fphotos%2F1506130-elon-musk&psig=AOvVaw2_IPbRI39jwuwDqfx4dthG&ust=1651743361948000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCOjExNfFxfcCFQAAAAAdAAAAABAD'
              
              
              ),
        ),
        // 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fknowyourmeme.com%2Fphotos%2F1506130-elon-musk&psig=AOvVaw2_IPbRI39jwuwDqfx4dthG&ust=1651743361948000&source=images&cd=vfe&ved=0CAkQjRxqFwoTCOjExNfFxfcCFQAAAAAdAAAAABAD')
        // 'https://drive.google.com/file/d/1raIyCBNUU1psesfBMmoGD8oLPf8PJk4G/view?usp=drivesdk')),
      ),
    ],
  );
}
