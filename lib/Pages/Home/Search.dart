import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toktok/Pages/Custom_Widgets/HomePost.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  List postprofile = [
    "assets/Postpost/minoto/1.jpg","assets/Postpost/minoto/2.jpg","assets/Postpost/minoto/3.jpg","assets/Postpost/minoto/4.jpg","assets/Postpost/minoto/7.jpg","assets/Postpost/minoto/8.jpg","assets/Postpost/minoto/9.jpg","assets/Postpost/minoto/10.jpg",

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar( backgroundColor: Colors.black,
  title: SizedBox(
    height: 40,
    width: 350,
    child: Center(
      child: TextField(

        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.white
          ),
          prefixIcon: Icon(Icons.search),
      prefixIconColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey)
      ) ,
               focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: Colors.grey)
        )
        ),
      ),
    ),
  ),
),

      body: SingleChildScrollView(
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
            height: 200,
            width: 500,
            child: PageView.builder(
            itemCount: postprofile.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Image.asset(postprofile[index],fit: BoxFit.cover,),
                );
              },
            ),
          ),SizedBox(

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
      ),
    );
  }
}
