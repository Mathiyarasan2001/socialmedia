import 'package:flutter/material.dart';
import 'package:toktok/Pages/Custom_Widgets/color.dart';

import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:toktok/Pages/LoginPage.dart/DetailsPage.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20, right: 250),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Color(0xFF0f0f0e),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: LoginHeading_text(text: "OTP Verification"),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, top: 20, right: 25, bottom: 50),
              child: LoginSubHeading_text(
                  text:
                      "Enter the verifaction code we just sent on your email address"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
              child: PinCodeTextField(
                enableActiveFill: true,
                enabled: true,
                showCursor: false,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    selectedColor: Colors.green,
                    selectedFillColor: Colors.white,
                    inactiveColor: Color.fromARGB(255, 16, 91, 148),
                    activeFillColor: Colors.white,
                    inactiveFillColor: const Color.fromARGB(255, 222, 222, 222),
                    activeColor: Colors.red),
                appContext: context,
                length: 4,
              ),
            ),
            Center(
                child: Continue_Textbutton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(),
                          ));
                    },
                    text: "Verify"))
          ],
        ),
      ),
    );
  }
}
