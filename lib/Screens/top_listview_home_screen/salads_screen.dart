import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Salads_Screen extends StatelessWidget {
  static String id = "Salads_Screen";
  Salads_Screen({Key? key}) : super(key: key);
  List<Map<String, String>> popularFood = [
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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Salads",
          style: GoogleFonts.acme(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
        actions: [],
      ),
      body: Container(
        height: height,
        width: width,
        child: ListView.builder(
          itemCount: popularFood.length,
          itemBuilder: (BuildContext context, int index) {
            var product = popularFood[index];
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: height * 0.15,
                width: width,
                margin:
                    const EdgeInsets.only(bottom: 10.0, left: 15, right: 15),
                decoration: const BoxDecoration(
                  // ignore: unnecessary_const
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(6.0, 6.0),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CircleAvatar(
                            radius: height * 0.04,
                            backgroundColor: Colors.white24,
                            backgroundImage:
                                AssetImage(product['image'].toString()),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            product['price'].toString() + "\$",
                            style: GoogleFonts.acme(
                                fontSize: height * 0.02,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Text(
                        product['name'].toString(),
                        style: GoogleFonts.acme(
                            fontSize: height * 0.03,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
