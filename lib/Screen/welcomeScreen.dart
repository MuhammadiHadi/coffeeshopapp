import 'package:coffeeshopapp/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212325),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 58, right: 58),
                child: Image.asset("assets/images/pngegg.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 63),
                child: Text(
                  "Starbucks Dark9",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 62, right: 62),
                child: Text(
                  "Coffee cups set vector top view different types coffee menu hot latte cappuchino americano raf coffee fast food cup beverage white",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                      color: Color(0xff9199A1)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => HomeScreen()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.3,
                  margin: EdgeInsets.only(top: 88),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward,
                    size: 35,
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
