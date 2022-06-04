import 'package:flutter/material.dart';
import 'package:restaurant/Screens/account/payment.dart';
import 'package:restaurant/widgets/custom_header.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_stripe/flutter_stripe.dart' as strip;

import 'Add_Food.dart';
import 'Done_Order.dart';
import 'Tracking_Order.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> with TickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    this._tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Column(
        children: <Widget>[
          CustomHeader(
            title: 'Cart Food',
            quantity:3,
            internalScreen: false,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10.0,
            ),
            child: TabBar(
              controller: this._tabController,
              indicatorColor: theme.primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.black87,
              tabs: <Widget>[
                Tab(text: 'Add Food'),
                Tab(text: 'Tracking Order'),
                Tab(text: 'Done Order'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TabBarView(
                controller: this._tabController,
                children: <Widget>[
                  Add_Food(),
                  Tracking_Order(),
                  Done_Order(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
