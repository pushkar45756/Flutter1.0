import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/data/model/ProductModel.dart';
import 'package:provider/provider.dart';

import 'CartScreenV2.dart';
import 'ProductListScreenV2.dart';

///this is way two of state management here we are doing it with Provider and Notifier
class CartDemoScreenV2 extends StatefulWidget {
  @override
  _CartDemoScreenScreenState createState() => _CartDemoScreenScreenState();
}

class _CartDemoScreenScreenState extends State<CartDemoScreenV2> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    /// here the main Parent widget is registering itself as ChangeNotifierProvider
    /// means it will be serving to it's child as Listener or some kind, the
    /// provider value is accessible through it's all child
    return ChangeNotifierProvider<ProductModel>(
      create: (context) => ProductModel(),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Product List',
                ),
                Tab(
                  text: 'Cart List',
                )
              ],
            ),
            title: Text("Cart Demo V2"),
          ),
          body: TabBarView(
            children: <Widget>[ProductListScreenV2(), CartScreenV2(cart, sum)],
          ),
        ),
      ),
    );
  }
}
