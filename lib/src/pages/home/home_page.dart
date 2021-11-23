import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mini/src/configs/app_route.dart';
import 'package:mini/src/configs/app_setting.dart';
import 'package:mini/src/widgets/menu_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final List<String> images = [
    'https://sereneproperty.com/2019/connect/assets/frontend/img/photo-connect-800x815--1.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwf-cMywMBC1009xJYHpkaVjIoB0EExFxLLA&usqp=CAU',
    'https://pix10.agoda.net/hotelImages/157/1575192/1575192_16101913560047918848.jpg?s=1024x768',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqXSdp2b_zn-RbvWBYf9oifYQRPAhlkm5mOg&usqp=CAU',
    'https://www.qh.co.th/upload/project/134/53395f2b715e1183f_5f2b715e0add9.jpg',
    'https://www.matichon.co.th/wp-content/uploads/2021/09/S__91086906.jpg',
    'http://terrabkk.com/wp-content/uploads/2014/07/D-condo-Rattanathibate-2.jpg',
  ];

  List<Map<String, String>> imgArray = [
    {
      "img":
      "https://siamrath.co.th/files/styles/1140/public/img/20210615/36afef1acc7f1354398a5f9b29132b6e17a33c19960e9cb6aaee607718cdab3d.jpg?itok=e0NAveRU",
      "title": "Painting Studio",
      "description":
      "You need a creative space ready for your art? We got that covered.",
      "price": "\$15,000",
      "page": "login"
    },
    {
      "img":
      "https://f.ptcdn.info/972/072/000/qqkxpgytmwKdcv2VvIO-o.jpg",
      "title": "Art Gallery",
      "description":
      "Don't forget to visit one of the coolest art galleries in town.",
      "price": "\$20,000",
      "page": "info"
    },
    {
      "img":
      "https://www.qh.co.th/upload/project/97/15135f1b2dda29c51_TheTrustcondo%E0%B8%87%E0%B8%B2%E0%B8%A1%E0%B8%A7%E0%B8%87%E0%B8%84%E0%B9%8C%E0%B8%A7%E0%B8%B2%E0%B8%99_PIC1.jpg",
      "title": "Moden Tone",
      "description":
      "Some of the best music video services someone could have for the lowest prices.",
      "price": "\$25,000",
      "page": "upcoming"
    },
  ];
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
              accountName: Text('Jeerasak Jeh-ae - Afnan Wanthong',
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
          'Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: images.length,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIdx) {
                return Container(
                  child: Center(
                      child: Image.network(images[index],
                          fit: BoxFit.cover, width: 1000)),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              items: imgArray
                  .map((item) => GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, item["page"]);
                },
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                blurRadius: 8,
                                spreadRadius: 0.3,
                                offset: Offset(0, 3))
                          ]),
                          child: AspectRatio(
                            aspectRatio: 2 / 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                item["img"],
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Column(
                          children: [
                            Text(item["price"],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.pink.shade200)),
                            Text(item["title"],
                                style:
                                TextStyle(fontSize: 32, color: Colors.black)),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 8),
                              child: Text(
                                item["description"],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.pink.shade200),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
                  .toList(),
              options: CarouselOptions(
                  height: 530,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 4 / 4,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                  // viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
} //end class
