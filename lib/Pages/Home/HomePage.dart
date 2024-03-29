import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:toktok/Pages/Custom_Widgets/HomePost.dart';
import 'package:toktok/Pages/Custom_Widgets/Homepostpage.dart';
import 'package:toktok/Pages/Custom_Widgets/Story_widgets.dart';
import 'package:toktok/Pages/Home/ButtomNavigationBar.dart';
import 'package:toktok/Pages/Home/storyView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List StoryDetails = [
    [
      Icon(
        Icons.add_circle,
        color: Colors.white,
      ),
      "Mathi_de_fozzyie",
      "assets/home profile/myprofile.jpg",
      Colors.green,
      "Hi, \n Welcome to digital world",
      Colors.grey,
      "https://w.forfun.com/fetch/9c/9c7e04bc0e069e2d94df80fff7d98e66.jpeg?h=900&r=0.5",
    ],
    [
      Icon(null),
      "Sky_Blze",
      "assets/home profile/1.png",
      Colors.white,
      "Hi friends\nI am Tom cruies",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/278/244/55/tom-cruise-2018-mission-impossible-fallout-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Sky_Blze",
      "assets/home profile/2.png",
      Colors.white,
      "Hi friends\nI am RDJ",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/949/368/996/robert-downey-jr-smoking-photoshoot-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Rock_DJ",
      "assets/home profile/3.png",
      Colors.white,
      "Hi friends\nI am Rock",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/478/674/364/alexandra-daddario-and-dwayne-the-rock-johnson-black-and-white-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Ro_bert",
      "assets/home profile/4.png",
      Colors.white,
      "Hi friends\nI am Robert Pattison",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/74/1002/471/men-actors-robert-pattinson-people-actors-hd-art-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Sha_hid",
      "assets/home profile/5.png",
      Colors.white,
      "Hi friends\nI am Shahid Kapoor",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/592/312/939/male-celebrities-shahid-kapoor-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Pra_bhas",
      "assets/home profile/6.png",
      Colors.white,
      "Hi friends\nI am Prabhash",
      Colors.grey,
      "https://c4.wallpaperflare.com/wallpaper/803/1019/785/tamil-saaho-prabhas-2018-wallpaper-preview.jpg"
    ],
    [
      Icon(null),
      "Minoto",
      "assets/PostProfile/minoto.jpg",
      Colors.white,
      "Don't Be Afraid of Death",
      Colors.grey,
      "https://w0.peakpx.com/wallpaper/198/283/HD-wallpaper-minato-neon-naruto-black-shippuden-simple-hokage-anime.jpg"
    ],
    [
      Icon(null),
      "Deku",
      "assets/PostProfile/deku.jpg",
      Colors.white,
      "No matter the situation in My Hero Academia, Deku usually has lionhearted words that are just what's needed to help the heroes prevail.",
      Colors.grey,
      "https://w0.peakpx.com/wallpaper/207/593/HD-wallpaper-all-migth-academia-anime-boku-deku-hero-my-no.jpg"
    ],
    [
      Icon(null),
      "Go_ku",
      "assets/PostProfile/goku.jpg",
      Colors.white,
      "I Am The Hope Of The Universe. I Am The Answer To All Living Things That Cry Out For Peace.",
      Colors.grey,
      "https://w0.peakpx.com/wallpaper/634/623/HD-wallpaper-goku-supreme-goku-supreme.jpg"
    ],
    [
      Icon(null),
      "Luffy",
      "assets/PostProfile/luffy.jpg",
      Colors.white,
      "I'm Going To Become King Of The Pirates!",
      Colors.grey,
      "https://w0.peakpx.com/wallpaper/340/402/HD-wallpaper-one-piece-ace-anime-luffy-sabo.jpg"
    ],
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

  List postimage = [
    "assets/Postpost/minoto/1.jpg",
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Text(
          "Dynamic",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              width: 400,
              child: GridView.builder(
                itemCount: StoryDetails.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  return Story_widgets(
                    addicon: StoryDetails[index][0],
                    IcononPressed: () {

                    },
                    text: StoryDetails[index][1],
                    image: StoryDetails[index][2],
                    backcolor: StoryDetails[index][3],
                    title: StoryDetails[index][4],
                    backgroundcolor: StoryDetails[index][5],
                    url: StoryDetails[index][6],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height*.7,
              width: 400,
              child: GridView.builder(
                itemCount: posttitle.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    child: HomePostpage(
                        title: posttitle[index],
                        profileImage: postprofile[index],
                        postimage: postimage[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
