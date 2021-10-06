import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FooterMenu extends StatelessWidget {
  FooterMenu();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
        color: Colors.green,
        child: Container(
          constraints: BoxConstraints.expand(height: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/');
                },
                child: Icon(Icons.home),
              )
              ,
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/screen.home_screen.calendar_today');
                },
                child: Icon(Icons.calendar_today_sharp),
              ),
              Icon(Icons.account_balance_wallet_rounded),
              Icon(Icons.notifications_active),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/account');
                },
                child: Icon(Icons.account_circle_rounded),
              ),
            ],
          ),
        ));
  }
}
