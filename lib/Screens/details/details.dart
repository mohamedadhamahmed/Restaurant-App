import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main_screen.dart';

class Details extends StatelessWidget {
  static String id = "Details";


  @override
  Widget build(BuildContext context) {
    //var counter = Provider.of<Product>(context).get_data();

    Size size = MediaQuery.of(context).size;
    //rcvdData = ModalRoute.of(context)?.settings.arguments;
    // Map product = screenArguments['product'];
    // int index = screenArguments['index'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          """Details""",
          style: GoogleFonts.acme(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(
                context, Main_Screen.id);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
        actions: [],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            top: 15,
            child: Text(
              "40\$",
              style: GoogleFonts.acme(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Positioned(
            right: 10,
            top: 15,
            child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ]),
                child: IconButton(
                  onPressed: () {
                    print("added");
                  },
                  // ignore: prefer_const_constructors
                  icon: Icon(
                    Icons.add,
                    size: 38.0,
                    color: Colors.redAccent,
                  ),
                )),
          ),
          Column(
            children: [
              Container(
                width: size.width * 0.8,
                height: size.height * 0.4,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      width: size.width,
                      height: size.width,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/plate-001.png"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut enim leo. In sagittis velit nibh. Morbi sollicitudin lorem vitae nisi iaculis,sit amet suscipit orci mollis. Ut dictum lectus eget diam vestibulum, at eleifend felis mattis. Sed molestie congue magna at venenatis. In mollis felis ut consectetur consequat.',
                  style: GoogleFonts.acme(
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.28,
              ),
              Container(
                //padding: const EdgeInsets.only(top: 20.0),
                color: const Color.fromRGBO(250, 250, 250, 1.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.history,
                          color: Colors.blue[900],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('12am - 3pm'),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.gps_fixed,
                          color: Colors.green[300],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('3.54 km'),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(
                          Icons.map,
                          color: Colors.redAccent,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('Map view'),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(
                          Icons.directions_walk,
                          color: Colors.deepOrange,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('Delivery'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
