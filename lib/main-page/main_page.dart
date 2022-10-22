import 'package:clone_linkin/sub-page/homepage/settting.dart';
import 'package:clone_linkin/sub-page/jobs/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import '../sub-page/MyNetwork/mynetwork.dart';
import '../sub-page/homepage/home_page.dart';
import '../sub-page/notification/notification.dart';
import '../sub-page/post/post.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  PageController _pageController = new PageController();
  Widget _buildBody() {
    return Container(
      child: PageView(
        onPageChanged: (index) {
          setState(() {
            _index = index;
          });
        },
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomePage(),
          MyNetwrk(),
          PostPage(),
          NotificationPage(),
          JobPage()
        ],
      ),
    );
  }

  Widget _buildItem() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text("Image"),
              Column(
                children: [Text("Text near profile")],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          Text("Decription"),
          Text("Photo"),
          Row(
            children: [
              Text("Icon like..."),
              Text("Share"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomAppBar() {
    return BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 8,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.white),
      currentIndex: _index,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _index = index;
        });
        _pageController.jumpToPage(_index);
      },
      items: [
        BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 0 ? Colors.black : Colors.white,
                            width: 1))),
                child: Icon(Icons.home, size: 20)),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                          color: _index == 1 ? Colors.black : Colors.white,
                          width: 1))),
              child: Icon(FontAwesome5.user_friends, size: 20),
            ),
            label: "My Network"),
        BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 2 ? Colors.black : Colors.white,
                            width: 1))),
                child: Icon(
                  CupertinoIcons.plus_square_fill,
                  size: 20,
                )),
            label: "Post"),
        BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 3 ? Colors.black : Colors.white,
                            width: 1))),
                child: Icon(
                  CupertinoIcons.bell_fill,
                  size: 20,
                )),
            label: "Notifications"),
        BottomNavigationBarItem(
            icon: Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width / 5,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: _index == 4 ? Colors.black : Colors.white,
                            width: 1))),
                child: Icon(
                  FontAwesome5.briefcase,
                  size: 20,
                )),
            label: "Jobs")
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: ((context) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            child: InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/profile.png'),
                  // backgroundImage: NetworkImage(
                  //     'https://tinypng.com/images/social/website.jpg'),
                ),
              ),
            ),
          );
        }),
      ),
      backgroundColor: Colors.white,
      title: InkWell(
        onTap: (() {}),
        child: Container(
          padding: EdgeInsets.all(5),
          color: HexColor("#39434f"),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 15,
              ),
              Text(
                "Search",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.ellipses_bubble_fill,
              color: HexColor("#39434f"),
            ))
      ],
    );
  }

  Widget _buildDrawer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.48,
      child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  color: Colors.grey[100],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.width * 0.11,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: CircleAvatar(
                              radius: 90,
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Seak Kimhour",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "View Profile",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 8),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10, left: 10),
                                width: 3,
                                height: 3,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 30,
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Setting()),
                                  );
                                },
                                child: Text(
                                  "Settiing",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 8),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.close,
                            size: 15,
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border(
                      top: BorderSide(color: Colors.black12, width: 1),
                      bottom: BorderSide(color: Colors.black12, width: 1),
                    )),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 15,
                      height: 15,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [Colors.yellow, Colors.orange])),
                    ),
                    const Text("Try Premium for free",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Recent"),
                      textColor: Colors.black45,
                    )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.black12, width: 1),
                        bottom: BorderSide(color: Colors.black12, width: 1),
                      ),
                    ),
                    child: const ListTile(
                      title: Text("Groups"),
                      textColor: Color.fromARGB(255, 33, 93, 243),
                    )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.42,
                        margin: EdgeInsets.only(left: 20, top: 12, bottom: 12),
                        child: Text(
                          "Event",
                          style: TextStyle(
                              color: Color.fromARGB(255, 33, 93, 243),
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 40, top: 6, bottom: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.black38,
                          ),
                          Text(
                            "Create Event",
                            style: TextStyle(
                                color: Color.fromARGB(255, 33, 93, 243),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Followed Hashtags"),
                      textColor: Color.fromARGB(255, 33, 93, 243),
                    )),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.black12, width: 1))),
                    child: const ListTile(
                      title: Text("Discover more"),
                      textColor: Color.fromARGB(255, 52, 103, 232),
                    )),
              ),
            ],
          )),
    );
  }
}
