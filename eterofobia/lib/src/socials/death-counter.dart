import 'package:blobs/blobs.dart';
import 'package:eterofobia/src/pages/home/body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeathCounter extends StatelessWidget {
  const DeathCounter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  children: [
                    Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/eterofobia-onda.appspot.com/o/icon-ios.jpg?alt=media&token=0d4796bf-8794-47d8-ac1b-b4bd8bcd8131',
                      width: 100,
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Wrap(
                        children: [
                          Text(
                            'Coppie che si devono nascondere in pubblico perchè etero (non per altro)',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Blob.animatedRandom(
                    size: MediaQuery.of(context).size.width,
                    loop: true,
                    duration: Duration(milliseconds: 2000),
                    styles: BlobStyles(
                      color: Colors.purple,
                    ),
                  ),
                  Blob.animatedRandom(
                    size: MediaQuery.of(context).size.width,
                    loop: true,
                    duration: Duration(milliseconds: 2000),
                    styles: BlobStyles(
                      color: Colors.red,
                      fillType: BlobFillType.stroke,
                      strokeWidth: 12,
                    ),
                  ),
                  Blob.animatedRandom(
                    size: MediaQuery.of(context).size.width,
                    loop: true,
                    duration: Duration(milliseconds: 2000),
                    styles: BlobStyles(
                      color: Colors.orange,
                      fillType: BlobFillType.stroke,
                      strokeWidth: 12,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width / 2 - 120),
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          "0",
                          style: GoogleFonts.ibmPlexSans(
                            color: Colors.white,
                            fontSize: 180,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          "eterofobia.com || @etero.fobia",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Tutti i numeri del nuovo fenomeno discriminatorio del 2021",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 16),
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                            ),
                          ),
                          Text(
                            "Cercando nuovi dati",
                            style: GoogleFonts.manrope(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 1,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
