import 'package:sugarcakeapp/models/cake.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ImageAndRating extends StatelessWidget {
  const ImageAndRating({Key? key, required this.cake}) : super(key: key);
  final Cake cake;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPadding * 3),
          child: Hero(
            tag: cake,
            child: Image.network(
                "${cake.image}"),
          ),
        ),
        Container(
          width: 70,
          decoration:  BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              const   Icon(
                Icons.star,
                color: Colors.orangeAccent,
                size: 20,
              ),
              Text(
                "${cake.rating}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
