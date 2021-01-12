import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowData extends StatelessWidget {
  final String title;
  final String value;
  final List<Color> colors;
  const RowData({
    Key key,
    this.title,
    this.value,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Container(
        width: (MediaQuery.of(context).size.width > 1000)
            ? 1000
            : MediaQuery.of(context).size.width,
        height: 300,
        padding: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                children: [
                  Text(
                    title,
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
            Center(
              child: Container(
                width: (MediaQuery.of(context).size.width > 1000)
                    ? 500
                    : MediaQuery.of(context).size.width - 48,
                child: Stack(
                  children: [
                    Blob.animatedRandom(
                      size: (MediaQuery.of(context).size.width > 1000)
                          ? 500
                          : MediaQuery.of(context).size.width - 48,
                      loop: true,
                      duration: Duration(milliseconds: 2000),
                      styles: BlobStyles(
                        color: colors[0],
                      ),
                    ),
                    Blob.animatedRandom(
                      size: (MediaQuery.of(context).size.width > 1000)
                          ? 500
                          : MediaQuery.of(context).size.width - 48,
                      loop: true,
                      duration: Duration(milliseconds: 2000),
                      styles: BlobStyles(
                        color: colors[1],
                        fillType: BlobFillType.stroke,
                        strokeWidth: 12,
                      ),
                    ),
                    Blob.animatedRandom(
                      size: (MediaQuery.of(context).size.width > 1000)
                          ? 500
                          : MediaQuery.of(context).size.width - 48,
                      loop: true,
                      duration: Duration(milliseconds: 2000),
                      styles: BlobStyles(
                        color: colors[2],
                        fillType: BlobFillType.stroke,
                        strokeWidth: 12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: (MediaQuery.of(context).size.width > 1000)
                              ? (500 / 2 - 120)
                              : MediaQuery.of(context).size.width / 2.5 - 120),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
