import 'package:flutter/material.dart';

class LoginHeading_text extends StatelessWidget {
  final String text;

  LoginHeading_text({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "NotoSans",
          fontSize: 23,
          fontWeight: FontWeight.w600,
          color: Color(0xFF0f0f0e)),
    );
  }
}

class LoginSubHeading_text extends StatelessWidget {
  final String text;

  const LoginSubHeading_text({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: "NotoSans",
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Color(0xFFb4b5ad)),
    );
  }
}

class Textfield_head extends StatelessWidget {
  final String text;

  const Textfield_head({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF33343a),
      ),
    );
  }
}

class Textfield_field extends StatelessWidget {
  final String text;

  const Textfield_field({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Color(0xFFaaabab),
      ),
    );
  }
}

class Notosans extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const Notosans({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "NotoSans",
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class Poppins extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  const Poppins({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class detailsTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;

  const detailsTextField(
      {Key? key, required this.controller, required this.hinttext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFaaabab),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFaaabab),
            ),
          ),
          hintStyle: TextStyle(
            color: Color(0xFFaaabab),
            fontSize: 16,
            fontWeight: FontWeight.w300,
            fontFamily: "Poppins",
          ),
          hintText: hinttext,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(17),
          ),
          filled: true,
          fillColor: Colors.white),
    );
  }
}

class Continue_Textbutton extends StatelessWidget {
  final VoidCallback onPressed;
  final text;
  const Continue_Textbutton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 300,
      decoration: BoxDecoration(
        color: Color(0xFF121927),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Notosans(
            text: text,
            size: 16,
            color: Color(0xffc8cacc),
            weight: FontWeight.w400),
      ),
    );
  }
}
