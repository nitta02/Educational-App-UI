// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, sized_box_for_whitespace, avoid_unnecessary_containers, unused_element, non_constant_identifier_names, avoid_print
import 'package:educational_app/seemore.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DashBoard',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.black,
                )
              ],
            ),
            backgroundColor: Colors.grey[300],
            elevation: 0.0,
          ),
          // ignore: prefer_const_literals_to_create_immutablesb
          body: Stack(children: [
            ListView(children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'images/dashboardim.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              offset: Offset(1, 2),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_book,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => SeeMore(),
                                        ));
                                  });
                                },
                                child: Text(
                                  'See More>',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(children: [
                      Text(
                        "Options",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'images/menu.gif',
                        height: 20,
                        width: 20,
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  options_menu(),
                  SizedBox(
                    height: 10,
                  ),
                  Column(children: [
                    tutorials_text(),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  tutorials(),
                ],
              ),
            ]),
          ]),

          drawerScrimColor: Colors.greenAccent,
          // ignore: prefer_const_literals_to_create_immutables
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ]),
        ));
  }

  SingleChildScrollView tutorials() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/mysql.png',
                      cacheHeight: 50,
                      cacheWidth: 50,
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      child: ListTile(
                        title: Text('MySQL'),
                        subtitle: Text('MySQL is used for Database'),
                        trailing: Icon(Icons.more_horiz_rounded),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/java-script.png',
                      cacheHeight: 50,
                      cacheWidth: 50,
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      child: ListTile(
                        title: Text('JS'),
                        subtitle: Text('Java-Script'),
                        trailing: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/java-script.png',
                      cacheHeight: 50,
                      cacheWidth: 50,
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      child: ListTile(
                        title: Text('JS'),
                        subtitle: Text('Java-Script'),
                        trailing: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("Tapped");
              },
              child: Container(
                child: Row(
                  children: [
                    Image.asset(
                      'images/java-script.png',
                      cacheHeight: 50,
                      cacheWidth: 50,
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      child: ListTile(
                        title: Text('JS'),
                        subtitle: Text('Java-Script'),
                        trailing: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding tutorials_text() {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Container(
        child: Row(children: [
          Text(
            'Popular Tutorials',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'images/play.gif',
            height: 30,
            width: 30,
          )
        ]),
      ),
    );
  }

  Padding options_menu() {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90,
            width: 70,
            child: Column(
              children: [
                Image.asset(
                  'images/display-code.png',
                  cacheHeight: 40,
                  cacheWidth: 40,
                ),
                Text(
                  'Code',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Container(
            height: 90,
            width: 70,
            child: Column(
              children: [
                Image.asset(
                  'images/download.png',
                  cacheHeight: 40,
                  cacheWidth: 40,
                ),
                Text(
                  'Download',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Container(
            height: 90,
            width: 70,
            child: Column(
              children: [
                Image.asset(
                  'images/stats.png',
                  cacheHeight: 40,
                  cacheWidth: 40,
                ),
                Text(
                  'Process',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
