import 'package:flutter/material.dart';
import 'package:toktok/Pages/Custom_Widgets/color.dart';
import 'package:toktok/Pages/Home/ButtomNavigationBar.dart';
import 'package:toktok/Pages/LoginPage.dart/Otppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              padding: const EdgeInsets.only(left: 50, top: 50, bottom: 50),
              child: Column(
                children: [
                  LoginHeading_text(
                    text: "Hi, Welcome Back!",
                  ),
                  LoginSubHeading_text(
                      text: "Hello again , you've been missed!")
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Textfield_head(text: "Phone Number"),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 300,
                    child: detailsTextField(
                        controller: Phonenumber,
                        hinttext: "Enter the Phone Number"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.done,
                  size: 15,
                ),
                SizedBox(
                  width: 3,
                ),
                Textfield_head(text: "Remember Me"),
                SizedBox(
                  width: 65,
                ),
                Notosans(
                  text: "Forget Password",
                  size: 14,
                  weight: FontWeight.w500,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Continue_Textbutton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpPage(),
                      ));
                },
                text: "Login",
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 100, child: Divider()),
                Notosans(
                    text: "Or With",
                    size: 12,
                    color: Colors.blueGrey,
                    weight: FontWeight.w400),
                Container(width: 100, child: Divider()),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buttomnavigation(),
                      ));
                },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color.fromARGB(255, 22, 216, 11),
                  child: Container(
                    height: 47,
                    width: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/google.png"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
