import 'package:flutter/material.dart';
import 'package:toktok/Pages/Custom_Widgets/color.dart';
import 'package:toktok/Pages/LoginPage.dart/Done.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final Name = TextEditingController();
  final Number = TextEditingController();
  final Age = TextEditingController();
  final Dob = TextEditingController();
  final Bio = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          height: 1000,
          width: 400,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                  colors: [
                Color.fromARGB(255, 13, 161, 57),
                Color.fromARGB(255, 7, 189, 209),
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 50, bottom: 30),
                child: Column(
                  children: [
                    LoginHeading_text(
                      text: "Fill the details",
                    ),
                    LoginSubHeading_text(text: "Step into the digital world")
                  ],
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textfield_head(text: "Name"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: detailsTextField(
                          controller: Name, hinttext: "Enter Your Name"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textfield_head(text: "Phone Number"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: detailsTextField(
                          controller: Number,
                          hinttext: "Enter the Phone Number"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textfield_head(text: "D.O.B"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: detailsTextField(
                          controller: Number, hinttext: "Date of birth"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textfield_head(text: "Age"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: detailsTextField(
                          controller: Number, hinttext: "Enter Your age"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Textfield_head(text: "Bio"),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 300,
                      child: detailsTextField(
                          controller: Number, hinttext: "Enter your bio"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Continue_Textbutton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DonePage(),
                        ));
                  },
                  text: "Update",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
