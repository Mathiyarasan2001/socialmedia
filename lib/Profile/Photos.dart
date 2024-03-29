import 'package:flutter/material.dart';
class Myphoto extends StatefulWidget {
  const Myphoto({super.key});

  @override
  State<Myphoto> createState() => _MyphotoState();
}

class _MyphotoState extends State<Myphoto> {

  List postprofile = [
    "assets/Postpost/minoto/1.jpg","assets/Postpost/minoto/2.jpg","assets/Postpost/minoto/3.jpg","assets/Postpost/minoto/4.jpg","assets/Postpost/minoto/7.jpg","assets/Postpost/minoto/8.jpg","assets/Postpost/minoto/9.jpg","assets/Postpost/minoto/10.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: GridView.builder(

          itemCount:postprofile .length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
          ),
          itemBuilder: (context, index) {
            return Container(

              child: Image.asset(postprofile[index],fit: BoxFit.fill,),
            );
          },
        ),
      ),
    );
  }
}
