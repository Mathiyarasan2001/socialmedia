import 'package:flutter/material.dart';

class HomePostpage extends StatelessWidget {
  final String title;
  final String profileImage;
  final String postimage;

  const HomePostpage({
    required this.title,
    required this.profileImage,
    required this.postimage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 350,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2, right: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(profileImage),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 60),
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            width: 400,
            child: Image.asset(
              postimage,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.comment,
                  size: 30,
                ),
                color: Colors.white,
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send,
                  size: 30,
                ),
                color: Colors.white,
              ),
              SizedBox(width: 120),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.save_alt,
                  size: 30,
                ),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
