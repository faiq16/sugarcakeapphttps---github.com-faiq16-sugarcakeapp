import 'package:sugarcakeapp/cart/components/not_empty_cart.dart';
import 'package:flutter/material.dart';

import '../../models/cake.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  late List<List<Cake>> cart = [];
  @override
  Widget build(BuildContext context) {
    if (cart.isEmpty) {
      return const NotEmptyCart();
    }
    return const NotEmptyCart();
  }
}
