import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teamvirton/screen/give_help.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({super.key});

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? Number;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Update profile",
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff707070)),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
                height: size.height / 1.15,
                padding: const EdgeInsets.only(
                    top: 10, left: 240, right: 240, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5), blurRadius: 4)
                    ]),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    // Center(
                    // child:
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact Details",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff707070)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          buildName(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildContactNumber(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildState(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildDistrict(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildCategory(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildAddress(),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Social Media Details",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff707070)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          buildWhatsAppNumber(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildTelegramNumber(),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Wallets",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff707070)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          buildBHIMUPI(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildGPAY(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildPHONEPAY(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildPAYTM(),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Wallets",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff707070)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          buildNomineeName(),
                          const SizedBox(
                            height: 10,
                          ),
                          buildNomineeNumber(),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const GiveHelp())));
                        },
                        child: Container(
                          height: 50,
                          width: size.width / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff043B65),
                          ),
                          child: Center(
                              child: Text(
                            "Update",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    )
                  ],
                )),
          )
        ]),
      ),
    ));
  }

  TextFormField buildName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Name",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      onSaved: (var value) {
        var name = value;
      },
    );
  }

  TextFormField buildContactNumber() {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      // maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Contact Number",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.length != 10) {
          return "number is required";
        }
        return null;
      },
      onSaved: (var value) {
        Number = value;
      },
    );
  }

  TextFormField buildState() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "State",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextField buildDistrict() {
    return TextField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "District",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextFormField buildCategory() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Category",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Category is required";
        }
        return null;
      },
      onSaved: (var value) {
        var name = value;
      },
    );
  }

  TextFormField buildAddress() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Adress",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Address is required";
        }
        return null;
      },
      onSaved: (var value) {
        var name = value;
      },
    );
  }

  TextFormField buildWhatsAppNumber() {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      // maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "WhatsApp Number",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.length != 10) {
          return "number is required";
        }
        return null;
      },
      onSaved: (var value) {
        var WhatsNumber = value;
      },
    );
  }

  TextFormField buildTelegramNumber() {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      // maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Telegram Number",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.length != 10) {
          return "Number is required";
        }
        return null;
      },
      onSaved: (var value) {
        var TelegramNumber = value;
      },
    );
  }

  TextFormField buildBHIMUPI() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "BHIM UPI",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextFormField buildGPAY() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "GPAY",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextFormField buildPHONEPAY() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "PHONEPAY",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextFormField buildPAYTM() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "PAYTM",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
    );
  }

  TextFormField buildNomineeName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[a-zA-Z.( )]'))
      ],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Name",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.isEmpty) {
          return "Name is required";
        }
        return null;
      },
      onSaved: (var value) {
        var name = value;
      },
    );
  }

  TextFormField buildNomineeNumber() {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      // maxLength: 10,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: "Contact Number",
          labelStyle:
              GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400)),
      validator: (var value) {
        if (value!.length != 10) {
          return "number is required";
        }
        return null;
      },
      onSaved: (var value) {
        var NomineeNumber = value;
      },
    );
  }
}
