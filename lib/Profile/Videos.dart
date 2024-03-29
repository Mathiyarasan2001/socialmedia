import 'package:flutter/material.dart';
class photo extends StatefulWidget {
  const photo({super.key});

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  //
  // List postimage = [
  //   "assets/Postpost/minoto/1.jpg",
  //   "assets/PostProfile/deku.jpg",
  //   "assets/PostProfile/luffy.jpg",
  //   "assets/PostProfile/goku.jpg",
  //   "assets/PostProfile/zoro.jpg",
  //   "assets/PostProfile/ishida.jpg",
  //   "assets/PostProfile/gojo.jpg",
  //   "assets/PostProfile/lucifer.jpg",
  //   "assets/PostProfile/taki.png",
  //   "assets/PostProfile/eren.png",
  //   "assets/PostProfile/nami.jpg"
  // ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child:Column(
            children: [
      
              SizedBox(
      
                height: 300,
                width: 350,
                child: Row(
                  children: [Container(
                    height: 300,
                    width: 175,
      
                    child: Image.asset("assets/Postpost/minoto/5.jpg",fit: BoxFit.cover,),
                  ),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 175,
      
                          child: Image.asset("assets/PostProfile/eren.png",fit: BoxFit.cover),
                        ),Container(
                          height: 150,
                          width: 175,
                          child: Image.asset("assets/PostProfile/ishida.jpg",fit: BoxFit.cover),
                        )
                      ],
                    )
                  ],
                ),
              ),
             SizedBox(
      
                height: 300,
                width: 350,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 175,
      
                          child: Image.asset("assets/Search/konnan.jpg",fit: BoxFit.cover),
                        ),Container(
                          height: 150,
                          width: 175,
                          child: Image.asset("assets/Search/narugroup.jpg",fit: BoxFit.cover),
                        )
                      ],
                    ),Container(
                      height: 300,
                      width: 175,
      
                      child: Image.asset("assets/Search/pain.jpg",fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),SizedBox(
      
                height: 300,
                width: 350,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 350,
      
                      child: Image.asset("assets/Search/eren.jpg",fit: BoxFit.cover),
                    ),Container(
                      height: 100,
                      width: 350,
                      child: Image.asset("assets/Search/mikasha.jpg",fit: BoxFit.cover),
                    ),Container(
                      height: 100,
                      width: 350,
      
                      child: Image.asset("assets/Search/armin.jpg",fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),SizedBox(
      
                height: 300,
                width: 350,
                child: Row(
                  children: [
                    Container(
                      height: 300, width: 110,
      
                      child: Image.asset("assets/Search/kakashi.jpg",fit: BoxFit.cover),
                    ),
                    SizedBox(width: 5,),Container(
                      height: 300, width: 110,
                      child: Image.asset("assets/Search/gabumaru.jpg",fit: BoxFit.cover),
                    ), SizedBox(width: 5,),Container(
                      height: 300,width: 110,
      
                      child: Image.asset("assets/Search/rodi.jpg",fit: BoxFit.cover,),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: 350,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 200,width: 175,
      
                          child: Image.asset("assets/Search/hinta.jpg",fit: BoxFit.cover,),
                        ),Container(
                          height: 200,width: 175,
      
                          child: Image.asset("assets/Search/mydress.png",fit: BoxFit.cover,),
                        ),
                      ],
                    ),                      Column(
                      children: [
                        Container(      height: 200,width: 175,
      
                          child: Image.asset("assets/Search/002.jpg",fit: BoxFit.cover,),
                        ),Container(
                          height: 200,width: 175,
      
                          child: Image.asset("assets/Search/zom100.png",fit: BoxFit.cover,),
                        ),
                      ],
                    )
                  ],
                ),
      
              )
            ],
          )
      
      ),
    );
  }
}
