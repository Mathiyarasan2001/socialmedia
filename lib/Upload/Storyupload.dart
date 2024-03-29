import 'package:flutter/material.dart';

class StoryUpload extends StatefulWidget {
  const StoryUpload({super.key});

  @override
  State<StoryUpload> createState() => _StoryUploadState();
}

class _StoryUploadState extends State<StoryUpload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ,))
            },
            icon: Icon(Icons.arrow_back_sharp)),
        title: Text("Story Upload"),
      ),

    );
  }
}
