// import 'package:flutter/material.dart';
// import 'package:story_view/story_view.dart';
// import 'package:toktok/Pages/Home/ButtomNavigationBar.dart';
//
// class StoryViewPage extends StatefulWidget {
//   final String title;
//   final String url;
//   const StoryViewPage({Key? key},
//   required this.title,
//   required this.url,
//
//
//   ) : super(key: key);
//
//   @override
//   _StoryViewPageState createState() => _StoryViewPageState();
// }
//
// class _StoryViewPageState extends State<StoryViewPage> {
//   final StoryController controller = StoryController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StoryView(
//         controller: controller,
//         inline: false,
//         repeat: false,
//         onComplete: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(
//               builder: (context) => Buttomnavigation(),
//             ),
//           );
//         },
//         storyItems: [
//           StoryItem.text(title: , backgroundColor: Colors.black),
//           StoryItem.inlineImage(url: url, controller: controller),
//           // StoryItem.inlineImage(url: "https://wallpapercave.com/wp/wp13134823.jpg", controller: controller),
//           // StoryItem.inlineImage(url: "https://images.wallpapersden.com/image/download/satoru-gojo-2023-digital-jujutsu-kaisen-art_bmZsaWmUmZqaraWkpJRobWllrWdma2U.jpg/*/**/*/", controller: controller),
//           // StoryItem.inlineImage(url: "https://images.wallpapersden.com/image/download/sung-jin-woo-digital-solo-leveling_bmdnam6UmZqaraWkpJRmbmdsrWZlbWU.jpg", controller: controller),
//         ],
//       ),
//     );
//   }
// }
