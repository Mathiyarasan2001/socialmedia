import 'package:flutter/material.dart';
import 'package:toktok/Pages/Home/ButtomNavigationBar.dart';
import 'package:toktok/Pages/Home/HomePage.dart';
import 'package:toktok/Pages/Home/Reels.dart';
import 'package:toktok/Pages/Home/Search.dart';
import 'package:toktok/Profile/Photos.dart';
import 'package:toktok/Profile/Videos.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List posttitle = [
    "Minoto",
    "Deku",
    "Monkey De _Luffy",
    "Son_Goku",
    "Ro_Zoro",
    "Ishida",
    "Gojo",
    "Luci_fer",
    "Take_michi",
    "Eren",
    "Nami"
  ];

  List postprofile = [
    "assets/PostProfile/minoto.jpg",
    "assets/PostProfile/deku.jpg",
    "assets/PostProfile/luffy.jpg",
    "assets/PostProfile/goku.jpg",
    "assets/PostProfile/zoro.jpg",
    "assets/PostProfile/ishida.jpg",
    "assets/PostProfile/gojo.jpg",
    "assets/PostProfile/lucifer.jpg",
    "assets/PostProfile/taki.png",
    "assets/PostProfile/eren.png",
    "assets/PostProfile/nami.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Buttomnavigation()),
              );
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          title: Text(
            "Your Account",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/home profile/myprofile.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Mathi_de_fozzyie",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                "UI/UX DEVELOPER",
                style: TextStyle(color: Color(0xffd0fe48), fontSize: 14),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape:
                          MaterialStatePropertyAll(ContinuousRectangleBorder()),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffd0fe48)),
                      fixedSize: MaterialStateProperty.all(Size(150, 40)),
                    ),
                    onPressed: () {},
                    child: Text("Edit Profile",
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape:
                          MaterialStatePropertyAll(ContinuousRectangleBorder()),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xffd0fe48)),
                      fixedSize: MaterialStateProperty.all(Size(150, 40)),
                    ),
                    onPressed: () {},
                    child: Text("Share Profile",
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("500", style: TextStyle(color: Colors.white)),
                      Text("Following", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text("1000", style: TextStyle(color: Colors.white)),
                      Text("Followers", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: VerticalDivider(
                      color: Colors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      Text("500", style: TextStyle(color: Colors.white)),
                      Text("Close Friends",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 90,
                width: 400,
                child: GridView.builder(
                  itemCount: postprofile.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.red,
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage(postprofile[index]),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            height: 20,
                            width: 100,
                            child: Center(
                              child: Text(
                                posttitle[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 700,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.camera_alt_outlined), text: null),
                        Tab(icon: Icon(Icons.photo_album), text: null),
                      ],
                      dividerColor: Colors.grey,
                      indicatorColor: Color(0xffd0fe48),
                      unselectedLabelColor: Colors.white,
                      labelColor: Color(0xffd0fe48),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [Myphoto(), photo()],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
