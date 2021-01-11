import 'package:blobs/blobs.dart';
import 'package:clipboard/clipboard.dart';
import 'package:eterofobia/src/pages/home/row_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart' as graphic;

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 40,
            bottom: 40,
          ),
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
                        fontSize: (MediaQuery.of(context).size.width > 1000)
                            ? 32
                            : 22,
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
              size: (MediaQuery.of(context).size.width > 1000)
                  ? 1000
                  : MediaQuery.of(context).size.width,
              loop: true,
              duration: Duration(milliseconds: 2000),
              styles: BlobStyles(
                color: Colors.purple,
              ),
            ),
            Blob.animatedRandom(
              size: (MediaQuery.of(context).size.width > 1000)
                  ? 1000
                  : MediaQuery.of(context).size.width,
              loop: true,
              duration: Duration(milliseconds: 2000),
              styles: BlobStyles(
                color: Colors.red,
                fillType: BlobFillType.stroke,
                strokeWidth: 12,
              ),
            ),
            Blob.animatedRandom(
              size: (MediaQuery.of(context).size.width > 1000)
                  ? 1000
                  : MediaQuery.of(context).size.width,
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
                  top: (MediaQuery.of(context).size.width > 1000)
                      ? (1000 / 2 - 120)
                      : MediaQuery.of(context).size.width / 2 - 120),
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
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text(
            "Tutti i dati",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        RowData(
          title: "Ragazzi cacciati di casa perchè etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Ragazzi bullizzati pechè amano una persona dell'altro sesso",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Ragazzi incitati a suicidarsi sui social perchè etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Coppie menate perchè etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Coppie che si devono nascondere in pubblico perchè etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title:
              "Politici schierati pubblicamente contro i diritti etero (matrimonio, adozione, felicità)",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Preti che hanno incitano l'odio contro gli etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title:
              "Persone che si fingono gay perchè hanno paura di essere etero per colpa dei pregiudizi",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Persone cacciate dal lavoro perchè etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: "Paesi in cui non è possibile entrare se si è etero",
          value: "0",
          color: Colors.blue,
        ),
        RowData(
          title: 'Paesi in cui esistono le "etero free zone"',
          value: "0",
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
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
        Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "L'emergenza dell'eterofobia rispetto a fenomeni discriminatori minori",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "Atti di discriminazione nel 2020",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 300,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.only(top: 24, left: 8, right: 8, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(24),
          ),
          child: graphic.Chart(
            data: [
              {'genre': 'eterofobia', 'sold': 0},
              {'genre': 'omofobia', 'sold': 150.000},
              {'genre': 'transfobia', 'sold': 1500},
            ],
            scales: {
              'genre': graphic.CatScale(
                accessor: (map) => map['genre'] as String,
              ),
              'sold': graphic.LinearScale(
                accessor: (map) => map['sold'] as num,
                nice: true,
              )
            },
            geoms: [
              graphic.IntervalGeom(
                position: graphic.PositionAttr(field: 'genre*sold'),
              )
            ],
            axes: {
              'genre': graphic.Defaults.horizontalAxis,
              'sold': graphic.Defaults.verticalAxis,
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "Persone uccise per il proprio orientamento sessuale nel 2020",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 300,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.only(top: 24, left: 8, right: 8, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(24),
          ),
          child: graphic.Chart(
            data: [
              {'genre': 'etero', 'sold': 0},
              {'genre': 'gay', 'sold': 136},
              {'genre': 'trans', 'sold': 20},
            ],
            scales: {
              'genre': graphic.CatScale(
                accessor: (map) => map['genre'] as String,
              ),
              'sold': graphic.LinearScale(
                accessor: (map) => map['sold'] as num,
                nice: true,
              )
            },
            geoms: [
              graphic.IntervalGeom(
                position: graphic.PositionAttr(field: 'genre*sold'),
              )
            ],
            axes: {
              'genre': graphic.Defaults.horizontalAxis,
              'sold': graphic.Defaults.verticalAxis,
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "Percentuale di persone in Italia apertamente favorevoli alla discriminazione contro:",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 300,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.only(top: 24, left: 8, right: 8, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(24),
          ),
          child: graphic.Chart(
            data: [
              {'genre': 'etero', 'sold': 0},
              {'genre': 'gay', 'sold': 23},
            ],
            scales: {
              'genre': graphic.CatScale(
                accessor: (map) => map['genre'] as String,
              ),
              'sold': graphic.LinearScale(
                accessor: (map) => map['sold'] as num,
                nice: true,
              )
            },
            geoms: [
              graphic.IntervalGeom(
                position: graphic.PositionAttr(field: 'genre*sold'),
              )
            ],
            axes: {
              'genre': graphic.Defaults.horizontalAxis,
              'sold': graphic.Defaults.verticalAxis,
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "Almeno 7 persone su 10 si dichiarano etero. È loro diritto poter vivere senza dover essere giudicati",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 300,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          padding: EdgeInsets.only(top: 24, left: 8, right: 8, bottom: 8),
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(24),
          ),
          child: graphic.Chart(
            data: [
              {'genre': 'etero', 'sold': 7},
              {'genre': 'gay', 'sold': 1},
              {'genre': 'trans', 'sold': 0.5},
            ],
            scales: {
              'genre': graphic.CatScale(
                accessor: (map) => map['genre'] as String,
              ),
              'sold': graphic.LinearScale(
                accessor: (map) => map['sold'] as num,
                nice: true,
              )
            },
            geoms: [
              graphic.IntervalGeom(
                position: graphic.PositionAttr(field: 'genre*sold'),
              )
            ],
            axes: {
              'genre': graphic.Defaults.horizontalAxis,
              'sold': graphic.Defaults.verticalAxis,
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 72, left: 16, right: 16),
          child: Wrap(
            children: [
              Text(
                "Noi di Onda Gamma condanniamo qualsiasi discriminazione. Ci teniamo a ribadire quindi che gli etero sono persone bellissime, normalissime e lo diciamo perchè abbiamo tanti amici etero.",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 72, left: 16, right: 16, bottom: 40),
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Text(
                      "Aiutaci a crescere! Condividi il link e ricordati di supportare i tuoi amici etero",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(Icons.copy),
                      ),
                      Text('Link copiato!'),
                    ],
                  ));
                  FlutterClipboard.copy('hello flutter friends').then((value) =>
                      ScaffoldMessenger.of(context).showSnackBar(snackBar));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Copia link",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
