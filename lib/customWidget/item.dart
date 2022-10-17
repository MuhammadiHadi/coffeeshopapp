import 'package:coffeeshopapp/Screen/detailPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  String? image;
  String? title;
  String? subtitle;
  String? price;

  Item({this.image, this.title, this.subtitle, this.price});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int x = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
          color: Color(0xff212325), borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.45,
              margin: EdgeInsets.only(top: 10),
              child: Image.asset(widget.image!)),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              widget.title!,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              widget.subtitle!,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xff9199A1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$x",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Color(0xffC49450)),
                ),
                Icon(
                  Icons.add,
                  size: 40,
                  color: Color(0xffC49450),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Special extends StatelessWidget {
  const Special({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => DetailPage()));
      },
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xff212325)),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: ListTile(
                    title: Text(
                      "Luwak Coffee",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    subtitle: Text(
                      "Premium flavor",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff9199A1)),
                    ),
                    trailing:
                        // Image.asset("assets/images/2.png")
                        CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage(
                        "assets/images/2.png",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "500",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xffC49450)),
                      ),
                      Icon(
                        Icons.add,
                        size: 40,
                        color: Color(0xffC49450),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
