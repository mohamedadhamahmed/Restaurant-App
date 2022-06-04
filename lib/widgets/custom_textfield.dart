import 'package:flutter/material.dart';
import '../constant.dart';

class Custom_TextField extends StatelessWidget {
  String hient;
  IconData icon;
  Function onclick;
  TextEditingController textEditingController;
  Custom_TextField(
      this.icon, this.hient, this.onclick, this.textEditingController);

  errorMasage(String str) {
    switch (str) {
      case "Enter your name":
        return 'Name is empty';
      case "Enter your Email":
        return "email is empty";
      case "Enter your password":
        return "password is empty";
      case "Confirm Password":
        return "Confirm password is empty";
      case "Enter  Email":
        return 'Email is empty';
      case "Enter  Username":
        return "username is empty";
      case "Enter  password":
        return "password is empty";
      case "Confirm password":
        return "Confirm password is empty";
      case "Room id":
        return 'Room id is empty';
      case "Room name":
        return "Room name is empty";
      case "Room password":
        return "password is empty";
      case "Confirm password":
        return "Confirm password is empty";
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: textEditingController,
        obscureText:
            hient == "Enter Your password" || hient == "Confirm Password"
                ? true
                : false,
        validator: (value) {
          if (value!.isEmpty) {
            return errorMasage(hient);
          } else {
            return null;
          }
        },
        cursorColor: KMainColor,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black,
          ),
          hintText: hient,
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.red)),
        ),
      ),
    );
  }
}
