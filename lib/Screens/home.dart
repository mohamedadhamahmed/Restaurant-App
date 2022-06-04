// ignore_for_file: prefer_const_constructors
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/Screens/top_listview_home_screen/BurgerScreen.dart';
import 'package:restaurant/Screens/top_listview_home_screen/Fastfood_screen.dart';
import 'package:restaurant/Screens/top_listview_home_screen/Proteins_screen.dart';
import 'package:restaurant/Screens/top_listview_home_screen/salads_screen.dart';


import 'details/details.dart';

class Home_Screen extends StatelessWidget {
  static String id = "Home_Screen";

  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Map<String, String>> foodOptions = [
      {
        'name': 'Proteins',
        'image': 'Icon-001.png',
      },
      {
        'name': 'Burger',
        'image': 'Icon-002.png',
      },
      {
        'name': 'Fastfood',
        'image': 'Icon-003.png',
      },
      {
        'name': 'Salads',
        'image': 'Icon-004.png',
      }
    ];

    final List<Map<String, String>> popularFood = [
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
      },
      {
        'name': 'Vegan food',
        'price': '400.00',
        'rate': '4.2',
        'clients': '150',
        'image': 'assets/plate-007.png'
      },
      {
        'name': 'Rich food',
        'price': '1000.00',
        'rate': '4.6',
        'clients': '10',
        'image': 'assets/plate-006.png'
      },
      {
        'name': 'Rich food',
        'price': '1000.00',
        'rate': '4.6',
        'clients': '10',
        'image': 'assets/plate-006.png'
      },
      {
        'name': 'Rich food',
        'price': '1000.00',
        'rate': '4.6',
        'clients': '10',
        'image': 'assets/plate-007.png'
      },
      {
        'name': 'Rich food',
        'price': '1000.00',
        'rate': '4.6',
        'clients': '10',
        'image': 'assets/plate-002.png'
      }
    ];
    Map<String, String> option = {'': ''};
    return Container(
      child: ListView(
        children: [
          Container(
            height: height * 0.07,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 32.0,
                      )),
                ),
                Text(
                  'MY PLACE',
                  style: GoogleFonts.alata(
                      fontSize: 23.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Icon(Icons.notifications_none,
                      size: 32.0, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Container(
            width: width * 0.27,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: TextField(
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFE85852), width: 1.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28.0,
                      color: Color(0xFFE85852),
                    ),
                    suffixIcon: Icon(
                      Icons.filter_list,
                      size: 28.0,
                      color: Color(0xFFE85852),
                    ),
                    hintText: 'Find a food or Restaurant',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 19.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              height: height * 0.22,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // padding: const EdgeInsets.only(left: 10.0, right: 10),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    Map<String, String> option = foodOptions[index];
                    return Container(
                      margin: const EdgeInsets.only(right: 5),
                      width: width * 0.25,
                      height: height * 0.14,
                      child: FlatButton(
                        onPressed: () {
                          print(index);
                          if (index == 3) {
                            Navigator.pushNamed(context, Salads_Screen.id);
                          } else if (index == 2) {
                            Navigator.pushNamed(context, Fastfood_Screen.id);
                          } else if (index == 1) {
                            Navigator.pushNamed(context, Burger_Screen.id);
                          } else {
                            Navigator.pushNamed(context, Proteins_Screen.id);
                          }
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: width * 0.22,
                              height: height * 0.14,
                              margin: const EdgeInsets.only(bottom: 2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    option['image'].toString(),
                                  ),
                                ),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10.0,
                                    color: Colors.grey,
                                    offset: Offset(6.0, 6.0),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.07,
                              child: Text(
                                option['name'].toString(),
                                style: GoogleFonts.acme(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Popular Food',
              style: GoogleFonts.aclonica(
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            width: width,
            height: height * 0.65,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 3),
              itemBuilder: (_, index) {
                option = popularFood[index];

                return Container(
                  width: width * 0.45,
                  height: height * 0.25,
                  child: GestureDetector(
                    onTap: () {
                      print(index);
                      //Provider.of<Product>(context, listen: false).product_Data(popularFood[index]);

                      Navigator.pushNamed(context, Details.id);
                    },
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                option['image'].toString(),
                              ),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.grey,
                                offset: Offset(6.0, 6.0),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          right: 20,
                          left: 10,
                          bottom: 15,
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                option['name'].toString(),
                                style: GoogleFonts.acme(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 4.0,
                                        offset: Offset(3.0, 3.0),
                                      )
                                    ]),
                                child: Icon(
                                  Icons.near_me,
                                  size: 22.0,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              itemCount: popularFood.length,
            ),
          )
        ],
      ),
    );
  }
}
