import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:toktok/Pages/Home/storyView.dart';

import '../Home/ButtomNavigationBar.dart';

class Story_widgets extends StatefulWidget {
  final String text;
  final String image;
  Color backcolor;

  final String title;
  final Color backgroundcolor;
  final String url;
  final VoidCallback? IcononPressed;

  final Icon addicon;
  Story_widgets(
      {Key? key,
      required this.text,
      required this.image,
      required this.backcolor,
      required this.title,
      required this.backgroundcolor,
      required this.url,
      required this.IcononPressed,
      required this.addicon})
      : super(key: key);

  @override
  State<Story_widgets> createState() => _Story_widgetsState();
}

class _Story_widgetsState extends State<Story_widgets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => StoryViewPage(
                  title: widget.title,
                  backgroundcolor: widget.backgroundcolor,
                  url: widget.url,
                ),
              )),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: widget.backcolor,
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(
                        widget.image,
                      ),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(left: 45, top: 40),
                child: IconButton(
                    onPressed: widget.IcononPressed, icon: widget.addicon),

                // IconButton(onPressed: (){}, icon: Icon(Icons.add_circle,color: Colors.white,)),
              ),
            ),
          ),
        ),
        Text(
          widget.text,
          style: TextStyle(
              color: Color(0xFFfcfcfc),
              fontFamily: "RobotoSlab",
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
    ;
  }
}

class StoryViewPage extends StatefulWidget {
  final String title;
  final Color backgroundcolor;
  final String url;
  // final VoidCallback? onPressed;

  StoryViewPage({
    Key? key,
    required this.title,
    required this.backgroundcolor,
    required this.url,
    // required this.onPressed
  }) : super(key: key);

  @override
  _StoryViewPageState createState() => _StoryViewPageState();
}

class _StoryViewPageState extends State<StoryViewPage> {
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller: controller,
        inline: false,
        repeat: false,
        onComplete: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Buttomnavigation(),
            ),
          );
        },
        storyItems: [
          StoryItem.text(
              title: widget.title, backgroundColor: widget.backgroundcolor),
          StoryItem.inlineImage(url: widget.url, controller: controller),
        ],
      ),
    );
  }
}
