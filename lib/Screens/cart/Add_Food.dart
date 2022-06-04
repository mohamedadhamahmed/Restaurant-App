
import 'package:flutter/material.dart';

class Add_Food extends StatelessWidget {
   Add_Food({Key? key}) : super(key: key);
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
    return Column(
      children: <Widget>[
        Expanded(
          child: body_add_food(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 35.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color:  Color(0xFFE85852),
          ),
          child: RaisedButton(
            onPressed: () async {
              print("565656565666");
              // Navigator.push(
              //     context,
              // MaterialPageRoute(
              //     builder: (context) =>
              //         PaymentSheetScreen()));
            },
            child: const Text(
              'CHECKOUT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );









  }
  Widget body_add_food(){
   return ListView.builder(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(food['name'].toString()),
                              Icon(Icons.delete_outline)
                            ],
                          ),
                          Text('\$${food['price']}'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.remove),
                              Container(
                                color: primaryColor,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 3.0,
                                  horizontal: 12.0,
                                ),
                                child: Text(
                                  'Add To 2',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.add,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
