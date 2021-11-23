import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini/src/configs/app_route.dart';
import 'package:mini/src/configs/app_setting.dart';
import 'package:mini/src/widgets/menu_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomtypePage extends StatefulWidget {
  @override
  _RoomtypePageState createState() => _RoomtypePageState();
}

class _RoomtypePageState extends State<RoomtypePage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pp1.jpg'),
              ),
              accountName: Text('Jeerasak Jehae - Afnan Wanthong',
                style: TextStyle(color: Colors.white),),
              accountEmail: Text('624235018@parichat.skru.ac.th',style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.red.shade600,
              ),
            ),
            ...MenuViewModel()
                .items
                .map((e) => ListTile(
              leading: Icon(
                e.icon,
                color: e.iconColor,
              ),
              title: Text(e.title),
              onTap: () {
                e.onTap(context);
              },
            ))
                .toList(),
            Spacer(),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
              title: const Text('Logout'),
              onTap: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove(AppSetting.userNameSetting);
                prefs.remove(AppSetting.passwordSetting);
                Navigator.pushNamed(context, AppRoute.loginRoute);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'ประเภทห้องเช่า',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.condoRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/condo.png'),
                          scale: 1),
                    ),
                  ),
                ),
                Text(
                  'คอนโดมิเนียม',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.apartmentRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/apartment.png'),
                          scale: 1),
                    ),
                  ),
                ),
                Text(
                  'อพาร์ทเมนท์',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.mansionRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/mantion.png'),
                          scale: 1),
                    ),
                  ),
                ),
                Text(
                  'แมนชั่น',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoute.dormitoryRoute);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/domi.jpg'),
                          scale: 1),
                    ),
                  ),
                ),
                Text(
                  'หอพัก',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
} //end class
