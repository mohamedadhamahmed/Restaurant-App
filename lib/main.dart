import 'package:flutter/material.dart';
import 'Screens/details/details.dart';
import 'Screens/home.dart';
import 'Screens/main_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/near_by/near_by.dart';
import 'Screens/signup_screen.dart';
import 'Screens/top_listview_home_screen/BurgerScreen.dart';
import 'Screens/top_listview_home_screen/Fastfood_screen.dart';
import 'Screens/top_listview_home_screen/Proteins_screen.dart';
import 'Screens/top_listview_home_screen/salads_screen.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey =
      "pk_test_51KAWpyJKkTu4aqntF4RQxuJLjzvOeRUN19KcBYJjzIVNpsqdYtNVKGj1zJgT4IBeyPsywR4GKNbzkdby1y5TEekJ00Oy9MxHSM";
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cera Pro",
        primaryColor: Color(0xFFE85852),
      ),
      initialRoute: Login_Screen.id,
      routes: {
        Login_Screen.id: (context) => Login_Screen(),
        SignUp.id: (context) => SignUp(),
        Main_Screen.id: (context) => Main_Screen(),
        Home_Screen.id: (context) => Home_Screen(),
        Details.id: (context) => Details(),
        Salads_Screen.id: (context) => Salads_Screen(),
        Proteins_Screen.id: (context) => Proteins_Screen(),
        Fastfood_Screen.id: (context) => Fastfood_Screen(),
        Burger_Screen.id: (context) => Burger_Screen(),
        NearBy.id: (context) => NearBy()
      },
    );
  }
}
