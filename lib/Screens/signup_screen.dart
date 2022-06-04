import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant/widgets/custom_textfield.dart';

import '../constant.dart';
import 'login_screen.dart';
import 'main_screen.dart';

class SignUp extends StatefulWidget {
  static String id = "signup_screen";

  const SignUp() : super();

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool loginremmber = false;
  GlobalKey<ScaffoldState> scaffol_signup_dkey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> form_login_key = GlobalKey<FormState>();
  TextEditingController textpassword = TextEditingController();
  TextEditingController textemail = TextEditingController();
  TextEditingController text_confirm_password = TextEditingController();
  TextEditingController text_username = TextEditingController();
  String password = "";
  String email = "";
  String name = "";
  String conf_password = "";
  var kMainColor = KMainColor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      child: Stack(
        children: [
          Container(
              // width: double.infinity,
              width: double.infinity,
              height: double.infinity,
              child: const Image(
                image: AssetImage('back4.jpg'),
                fit: BoxFit.cover,
              )),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.3),
              ),
              width: width * 0.40,
              height: height * 0.7,
              child: Form(
                key: form_login_key,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.07,
                    ),
                    SizedBox(
                      width: 150.0,
                      child: Center(
                        child: DefaultTextStyle(
                          style: GoogleFonts.acme(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
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
                      Icons.person,
                      "Enter  Username",
                      (value) {
                        name = value;
                      },
                      text_username,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Custom_TextField(
                      Icons.email,
                      "Enter  Email",
                      (value) {
                        email = value;
                      },
                      textemail,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Custom_TextField(
                      Icons.lock,
                      "Enter  password",
                      (value) {
                        password = value;
                      },
                      textpassword,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Custom_TextField(
                      Icons.lock,
                      "Confirm password",
                      (value) {
                        conf_password = value;
                      },
                      text_confirm_password,
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // const Text(
                          //   "Do have an account?",
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 16,
                          //   ),
                          // ),
                          //
                          Container(
                            // height: constraints.maxHeight * 0.1,

                            //  width: constraints.maxWidth * 0.3,

                            child: RaisedButton(
                                color: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                                onPressed: () async {
                                  if (form_login_key.currentState!.validate()) {
                                    print(form_login_key.currentState!
                                        .validate());
                                    print('sing up');

                                    form_login_key.currentState!.save();

                                    if (text_confirm_password.text !=
                                            textpassword.text ||
                                        !textemail.text
                                            .contains('@gmail.com')) {
                                      bool error_format =
                                          textemail.text.contains('@gmail.com');
                                      print("format $error_format");
                                      if (!textemail.text
                                          .contains('@gmail.com')) {}
                                      text_confirm_password.clear();
                                      textpassword.clear();
                                      textemail.clear();
                                      showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                                title: const Text('Message'),
                                                content: Text(error_format
                                                    ? 'please enter password and confirm password '
                                                    : "enter valid email forrmat"),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'Cancel'),
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ));
                                    } else {
                                      print(text_username.text +
                                          textpassword.text);
                                      ;
                                      text_confirm_password.clear();
                                      textpassword.clear();
                                      textemail.clear();
                                      text_username.clear();
                                      Navigator.pushNamed(
                                          context, Main_Screen.id);
                                    }
                                  }
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              onPressed: () {
                                Navigator.pushNamed(context, Login_Screen.id);
                              },
                              child: const Text(
                                "login",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
