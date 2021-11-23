import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('My Info'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [

                  Color(0xFFCC3399),
                  Color(0xFFCC6600),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                //stops: [0.5,0.5]
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/jj3.jpg'),
              ),
              Text(
                'Jeerasak Jeh-ae',
                style: TextStyle(
                    fontSize: 30, color: Colors.orangeAccent, fontFamily: 'Pacifico'),
              ),
              Text(
                'student',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber,
                    fontFamily: 'Source Sans Pro'),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.black12,
                  thickness: 5,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.all_inbox_sharp,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Student ID : 624235018'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.ac_unit_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('NAME : Jeerasak'),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.ac_unit_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('SURNAME : Jeh-ae'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_call,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Tel : 0624599307'),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email_outlined,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Email : 624235018@parichat.skru.ac.th'),

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
