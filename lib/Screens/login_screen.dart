import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/widgets/custom_textfield.dart';

import '../constant.dart';
import 'main_screen.dart';
import 'signup_screen.dart';

//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Login_Screen extends StatefulWidget {
  static String id = "login_screen";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Login_Screen> {
  bool loginremmber = false;
  GlobalKey<ScaffoldState> scaffol_login_dkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> form_login_key = GlobalKey<FormState>();
  TextEditingController textpassword = TextEditingController();
  TextEditingController textemail = TextEditingController();
  String password = '';
  String email = '';
  static const IconData copyright =
      IconData(0xe198, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var kMainColor = KMainColor;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              // width: double.infinity,
              height: double.infinity,
              width: double.infinity,
              child: const Image(
                image: AssetImage('back3.jpg'),
                fit: BoxFit.cover,
              )),
          Positioned(
              top: height * 0.15,
              left: width * 0.3,
              right: width * 0.3,
              bottom: 20,
              child: Container(
                  alignment: Alignment.center,

                  /// Using parent's constraints
                  /// to calculate child's height and width
                  height: height * 0.6,
                  width: width * 0.35,
                  child: Center(
                    child: Form(
                      key: form_login_key,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        width: width * 0.35,
                        height: height * 0.6,
                        child: ListView(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: height * 0.1,
                            ),
                            SizedBox(
                              width: width * 0.25,
                              child: Center(
                                child: DefaultTextStyle(
                                  style: GoogleFonts.acme(
                                    fontSize: 37,
                                    color: Colors.white,
                                    shadows: [
                                      const Shadow(
                                        blurRadius: 7.0,
                                        color: Colors.white,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      WavyAnimatedText('My Place'),
                                    ],
                                    onTap: () {
                                      print("Tap Event");
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),
                            Custom_TextField(
                              Icons.email,
                              "Enter your Email",
                              newMethod,
                              textemail,
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),

                            Custom_TextField(
                              Icons.lock,
                              "Enter your password",
                              (value) {
                                password = value;
                              },
                              textpassword,
                            ),

                            SizedBox(
                              height: height * 0.03,
                            ),

                            SizedBox(
                              height: height * 0.03,
                            ),
                            Center(
                              child: Container(
                                // height: constraints.maxHeight * 0.1,

                                //  width: constraints.maxWidth * 0.3,

                                child: Container(
                                    width: 70,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: GestureDetector(
                                      onTap: () async {
                                        if (form_login_key.currentState!
                                            .validate()) {
                                          print(form_login_key.currentState!
                                              .validate());
                                          print('date :');

                                          form_login_key.currentState!.save();

                                          textemail.clear();
                                          textpassword.clear();
                                          Navigator.pushNamed(
                                              context, Main_Screen.id);
                                        } else {
                                          textemail.clear();
                                          textpassword.clear();
                                        }
                                        //do some thing
                                      },
                                      child: Center(
                                        child: Text(
                                          'Login',
                                          style: GoogleFonts.adamina(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                // const Text("Don't have an account ? ",
                                //     style: TextStyle(
                                //       color: Colors.white,
                                //       fontWeight: FontWeight.bold,
                                //       fontSize: 18,
                                //     )),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, SignUp.id);
                                    },
                                    child: Text(
                                      "Sign up",
                                      style: GoogleFonts.acme(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: height * 0.05,
                            ),

                            // static const IconData copyright = IconData(0xe198, fontFamily: 'MaterialIcons');
                          ],
                        ),
                      ),
                    ),
                  ))),
          // Positioned(
          //   bottom: 5,
          //   child: Center(
          //     child: Container(
          //       padding: const EdgeInsets.only(left: 32.0, right: 32.0),
          //       child: const Text(
          //         "Copyright © 2021 Adham",
          //         style: TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  newMethod(value) {
    email = value;
  }
}
