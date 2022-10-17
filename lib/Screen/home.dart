import 'package:coffeeshopapp/customWidget/item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEADBCC),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 42, left: 24, right: 24),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    "Coffee",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xff212325)),
                  ),
                  Text(
                    "house",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Color(0xffC49450)),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Icon(Icons.shopping_bag_outlined),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.054,
              width: double.infinity,
              margin: EdgeInsets.only(left: 24, right: 24, top: 33),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffD9CABC)),
              child: Padding(
                padding: const EdgeInsets.only(left: 19),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 13,
                    ),
                    Text("Search")
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 24),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xffC49450)),
                      child: Center(
                        child: Text(
                          "All",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xffC49450)),
                      child: Center(
                        child: Text(
                          "Cappuccino",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xffC49450)),
                      child: Center(
                        child: Text(
                          "Starbucks",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xffC49450)),
                      child: Center(
                        child: Text(
                          "Nescafe",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Item(
                      image: "assets/images/2.png",
                      title: "Espresso Cappuccino",
                      subtitle: "Dark Roast",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Item(
                      image: "assets/images/1.png",
                      title: "Caffè Mocha Americano",
                      subtitle: "Decaf Pike",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Item(
                      image: "assets/images/5.png",
                      title: "Mocha Americano",
                      subtitle: "Decaf Pike",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 50, bottom: 10),
              child: Text(
                "Special for you",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Special(),
            Special(),
          ],
        ),
      ),
    );
  }
}
