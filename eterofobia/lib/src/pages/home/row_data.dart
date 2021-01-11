import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowData extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  const RowData({
    Key key,
    this.title,
    this.value,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Wrap(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16),
                  child: Text(
                    title,
                    style: GoogleFonts.manrope(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            child: Stack(
              children: [
                Blob.animatedRandom(
                  size: 40,
                  loop: true,
                  duration: Duration(milliseconds: 2000),
                  styles: BlobStyles(),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          value,
                          style: GoogleFonts.manrope(
                            color: Colors.white,
                            fontSize: 22,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
