import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyInstagram extends StatefulWidget {
  MyInstagram({super.key});

  @override
  State<MyInstagram> createState() => _MyInstagramState();
}

class _MyInstagramState extends State<MyInstagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              SvgPicture.asset(
                "assets/images/ic_instagram.svg",
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                width: 110,
                height: 35,
              ),
              PopupMenuButton(
                position: PopupMenuPosition.under,
                offset: Offset(-125, 12),
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
                color: HexColor('383838'),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Đang theo dõi",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                        Icon(Icons.people_outline),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Yêu thích",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        Icon(Icons.star_border),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 125,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 95,
                                      height: 95,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.orange,
                                            Colors.redAccent,
                                            Colors.purple
                                          ],
                                        ),
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                          padding: EdgeInsets.all(3),
                                          child: Container(
                                            child: CircleAvatar(
                                              backgroundColor: Colors.black,
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: CircleAvatar(
                                                  radius: 45,
                                                  backgroundImage: AssetImage(
                                                      'assets/images/Coder.png'),
                                                ),
                                              ),
                                            ),
                                          )),
                                    ),
                                  ),
                                  Positioned(
                                    top: 65,
                                    left: 65,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        radius: 11,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Tin của bạn",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/avt2.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "duckdev2301",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/catcool.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "coolcat11",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/catngap.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "holythemoly",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/naive.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "wowohpug2",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/redbird.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "mesia_k23",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 95,
                              height: 95,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.orange,
                                    Colors.redAccent,
                                    Colors.purple
                                  ],
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: CircleAvatar(
                                          radius: 45,
                                          backgroundImage: AssetImage(
                                              'assets/images/couplepig.jpg'),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                "life_at_vn",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 0.2,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/avt2.jpg'),
                                ),
                              ),
                              Text(
                                "duckdev2301",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Image(
                            image:
                            AssetImage('assets/images/eledust.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.bookmark_border_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "505 lượt thích",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                                text: "duckdev2301",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        " Phủi tí bụi nào :vvvv #elepant #elepants #nature #animal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  )
                                ]),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Xem 50 bình luận",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(
                                "28 tháng 10, 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.circle,
                                size: 3,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Xem bản dịch",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/catcool.jpg'),
                                ),
                              ),
                              Text(
                                "coolcat11",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Image(
                            image:
                                AssetImage('assets/images/coloralotbird.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.bookmark_border_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "1.444 lượt thích",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                                text: "coolcat11",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        " Beautuful bird. Photo take by coolcat11 #bird #beautiful #wild #nature #animal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  )
                                ]),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Xem 505 bình luận",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(
                                "26 tháng 10, 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.circle,
                                size: 3,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Xem bản dịch",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/redbird.jpg'),
                                ),
                              ),
                              Text(
                                "mesia_k23",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 380,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          child: Image(
                            image:
                                AssetImage('assets/images/xungquanhbird.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.bookmark_border_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "823 lượt thích",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10, top: 5),
                          child: RichText(
                            maxLines: 2,
                            text: TextSpan(
                                text: "mesia_k23",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text:
                                        " #animals #bird #birds #photograph #wild #epic #nature #animal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal),
                                  )
                                ]),
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Xem 50 bình luận",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(
                                "27 tháng 10, 2023",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.circle,
                                size: 3,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Xem bản dịch",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.white,
                width: 0.3,
              ),
            ),
          ),
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            backgroundColor: Colors.black,
            indicatorColor: Colors.black,
            elevation: 0,
            destinations: [
              NavigationDestination(
                icon: Icon(
                  Icons.home_filled,
                  size: 35,
                  color: Colors.white,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.white,
                ),
                label: "Search",
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                label: "New post",
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.slideshow_rounded,
                  size: 35,
                  color: Colors.white,
                ),
                label: "Reels",
              ),
              NavigationDestination(
                icon: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Coder.png'),
                  radius: 16,
                ),
                label: "Profile",
              ),
            ],
          ),
        ));
  }
}
