import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tracking_Order extends StatelessWidget {
   Tracking_Order({Key? key}) : super(key: key);
  final List<Map<String, String>> foods = [
    {
      'name': 'Rice and meat',
      'price': '130.00',
      'rate': '4.8',
      'clients': '150',
      'image': 'assets/plate-003.png'
    },
    {
      'name': 'Vegan food',
      'price': '400.00',
      'rate': '4.2',
      'clients': '150',
      'image': 'assets/plate-007.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery
        .of(context)
        .size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.6,
          width: size.width,
          child: body_tracking_order(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 65.0),
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 35.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: theme.primaryColor,
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.location_searching,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'View Tracking Order',
                style: TextStyle(
                    color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
   Widget body_tracking_order(){
     return  ListView.builder(
       itemCount: this.foods.length,
       itemBuilder: (BuildContext context, int index) {
         Map<String, String> food = foods[index];
         Color primaryColor = Theme.of(context).primaryColor;
         return Container(
           margin: const EdgeInsets.only(bottom: 10.0),
           child: GestureDetector(
             onTap: () {
               Navigator.pushNamed(
                 context,
                 'details',
                 arguments: {
                   'product': food,
                   'index': index,
                 },
               );
             },
             child: Hero(
               tag: 'detail_food$index',
               child: Card(
                 child: Row(
                   children: <Widget>[
                     Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(food['image'].toString()),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: <Widget>[
                             Padding(
                               padding:
                               const EdgeInsets.symmetric(vertical: 5.0),
                               child: Row(
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Text(food['name'].toString()),
                                   Text(
                                     'Item-2',
                                     style: TextStyle(color: primaryColor),
                                   ),
                                 ],
                               ),
                             ),
                             Text('\$${food['price']}'),
                             Padding(
                               padding: const EdgeInsets.only(top: 8.0),
                               child: Text(
                                 'View Detail',
                                 textAlign: TextAlign.end,
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
         );
       },
     );
   }
  }

