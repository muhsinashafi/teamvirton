import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GiveHelp extends StatelessWidget {
  const GiveHelp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: size.height / 1.1,
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 4)
              ]),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Give Help",
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff707070)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const GiveHelp())));
                        },
                        child: Container(
                          height: 30,
                          width: size.width / 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff043B65),
                          ),
                          child: Center(
                              child: Text(
                            "Conditions",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                  Table(
                    columnWidths: const {
                      0: FractionColumnWidth(0.1),
                      1: FractionColumnWidth(0.3)
                    },
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Name",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff707070)),
                          ),
                        ),
                        Text(" "),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Phone",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff707070)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "User Id",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff707070)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Amount",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff707070)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Status",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff707070)),
                          ),
                        ),
                      ]),
                      buildtableRow(
                          "assets/nature1.png",
                          "Maclaf Charitable Trust4",
                          "9887777",
                          "76",
                          "64733",
                          "paid"),
                      buildtableRow(
                          "assets/nature1.png",
                          "Maclaf Charitable Trust4",
                          "9887777",
                          "76",
                          "64733",
                          "paid"),
                      buildtableRow(
                          "assets/nature1.png",
                          "Maclaf Charitable Trust4",
                          "9887777",
                          "76",
                          "64733",
                          "paid"),
                      buildtableRow(
                          "assets/nature1.png",
                          "Maclaf Charitable Trust4",
                          "9887777",
                          "76",
                          "64733",
                          "paid"),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  TableRow buildtableRow(String url, String name, String phone, String id,
      String amount, String status) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.only(top: 12),
        child: CircleAvatar(
          radius: 15,
          backgroundColor: Colors.amber,
          backgroundImage: AssetImage(url),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          name,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff9A9A9A)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          phone,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff9A9A9A)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          id,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff9A9A9A)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          amount,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff9A9A9A)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          status,
          style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff1FAF15)),
        ),
      ),
    ]);
  }
}
