import 'package:flutter/material.dart';

class Account_setting extends StatefulWidget {
  const Account_setting({Key? key}) : super(key: key);

  @override
  _Account_settingState createState() => _Account_settingState();
}

class _Account_settingState extends State<Account_setting> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                    ))),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: theme.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Location',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                    ))),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.local_shipping,
                  size: 25.0,
                  color: theme.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Shipping',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.account_balance_wallet,
                  size: 25.0,
                  color: theme.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Payment',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Location Tracking',
                  style: TextStyle(fontSize: 18.0),
                ),
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      this.switchValue = value;
                    });
                  },
                  value: this.switchValue,
                  activeColor: theme.primaryColor,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 65.0),
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.power_settings_new,
                  size: 25.0,
                  color: theme.primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

