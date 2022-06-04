import 'package:flutter/material.dart';

import '../../widgets/food_card.dart';

class your_favorite extends StatelessWidget {
   your_favorite({Key? key}) : super(key: key);
  final List<Map<String, String>> favoriteFoods = [
    {
      'name': 'Tandoori Chicken',
      'price': '96.00',
      'rate': '4.9',
      'clients': '200',
      'image': 'assets/plate-001.png'
    },
    {
      'name': 'Salmon',
      'price': '40.50',
      'rate': '4.5',
      'clients': '168',
      'image': 'assets/plate-002.png'
    },
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'assets/plate-003.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: ((size.width / 2) / 230),
        children: this.favoriteFoods.map((product) {
          return Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: FoodCard(
              width: size.width,
              primaryColor: theme.primaryColor,
              productName: product['name'].toString(),
              productPrice: product['price'].toString(),
              productUrl: product['image'].toString(),
              productClients: product['clients'].toString(),
              productRate: product['rate'].toString(),
            ),
          );
        }).toList(),
      ),
    );
  }
}
