import 'package:flutter/material.dart';

import 'account/account.dart';
import 'cart/cart.dart';
import 'home.dart';
import 'near_by/near_by.dart';

class Main_Screen extends StatelessWidget {
  static String id = "Main_Screen";
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
             Home_Screen(),
            NearBy(),
            Cart(),
            Account(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.black,
          child: TabBar(
            labelPadding: const EdgeInsets.only(bottom: 10),
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorColor: Colors.green,
            labelColor: Colors.green,
            unselectedLabelColor: Colors.white,

            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 28),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.gps_not_fixed, size: 28),
                text: 'Near By',
              ),
              Tab(
                icon: Icon(Icons.card_travel, size: 28),
                text: 'Cart',
              ),
              Tab(
                icon: Icon(Icons.person_outline, size: 28),
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
