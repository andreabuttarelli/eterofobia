import 'package:blobs/blobs.dart';
import 'package:clipboard/clipboard.dart';
import 'package:eterofobia/src/pages/home/row_data.dart';
import 'package:eterofobia/src/widgets/wrapper_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart' as graphic;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int whenPeriodic = 100;
  int count = 10;
  Stream countDown;
  int otherIndex = 0;
  List<Widget> others = [
    RowData(
      title: "Ragazzi cacciati di casa perchè etero",
      value: "0",
      colors: [Colors.blue, Colors.orange, Colors.purple],
    ),
    RowData(
      title: "Ragazzi bullizzati perchè amano una persona dell'altro sesso",
      value: "0",
      colors: [Colors.orange, Colors.yellow, Colors.pink],
    ),
    RowData(
      title: "Ragazzi incitati a suicidarsi sui social perchè etero",
      value: "0",
      colors: [Colors.pink, Colors.orange, Colors.purple],
    ),
    RowData(
      title: "Coppie menate perchè etero",
      value: "0",
      colors: [Colors.purple, Colors.blue, Colors.orange],
    ),
    RowData(
      title: "Coppie che si devono nascondere in pubblico perchè etero",
      value: "0",
      colors: [Colors.amber, Colors.red, Colors.orange],
    ),
    RowData(
      title:
          "Politici schierati pubblicamente contro i diritti etero (matrimonio, felicità)",
      value: "0",
      colors: [Colors.pink, Colors.blue, Colors.orange],
    ),
    RowData(
      title: "Preti che incitano l'odio contro gli etero",
      value: "0",
      colors: [Colors.blue, Colors.purple, Colors.red],
    ),
    RowData(
      title:
          "Persone che si fingono gay perchè hanno paura di essere etero per colpa dei pregiudizi",
      value: "0",
      colors: [Colors.orange, Colors.blue, Colors.red],
    ),
    RowData(
      title: "Persone cacciate dal lavoro perchè etero",
      value: "0",
      colors: [Colors.grey, Colors.white, Colors.red],
    ),
    RowData(
      title: "Paesi in cui non è possibile entrare se si è etero",
      value: "0",
      colors: [Colors.purple, Colors.yellow, Colors.red],
    ),
    RowData(
      title: 'Paesi in cui esistono le "etero free zone"',
      value: "0",
      colors: [Colors.purple, Colors.white, Colors.orange],
    ),
  ];

  @override
  void initState() {
    super.initState();
    countDown = Stream.periodic(Duration(milliseconds: whenPeriodic),
        (_) => (count == 0) ? count = 0 : count--);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WrappedContainer(
          child: Column(
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
                              fontSize:
                                  (MediaQuery.of(context).size.width > 1000)
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
                          StreamBuilder(
                            stream: countDown,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                if (snapshot.data == 0) whenPeriodic = 10000;
                                return Text(
                                  "${snapshot.data}",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 180,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                  textAlign: TextAlign.center,
                                );
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => _launchURL(),
                          child: Text(
                            "@etero.fobia",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
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
                            "Cercando nuovi dati in diretta",
                            style: GoogleFonts.poppins(
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
              Padding(
                padding: const EdgeInsets.only(top: 48),
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
              ResponsiveBuilder(
                builder: (context, sizingInformation) {
                  // Check the sizing information here and return your UI
                  double height = 560;
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop) {
                    height = 624;
                  }

                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    height = 624;
                  }

                  return Container(
                    height: height,
                    child: PageView.builder(
                      controller: PageController(
                          initialPage: 80, viewportFraction: 0.9),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        otherIndex++;
                        if (otherIndex == others.length) otherIndex = 1;
                        return others[otherIndex - 1];
                      },
                    ),
                  );
                },
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
                      "Aggiornamento live",
                      style: GoogleFonts.poppins(
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
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Discriminazione",
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
                width: (MediaQuery.of(context).size.width > 1000)
                    ? 1000
                    : MediaQuery.of(context).size.width,
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
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Persone uccise",
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
                width: (MediaQuery.of(context).size.width > 1000)
                    ? 1000
                    : MediaQuery.of(context).size.width,
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
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Discriminazione contro:",
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
                width: (MediaQuery.of(context).size.width > 1000)
                    ? 1000
                    : MediaQuery.of(context).size.width,
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
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Essere giudicati",
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
                width: (MediaQuery.of(context).size.width > 1000)
                    ? 1000
                    : MediaQuery.of(context).size.width,
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
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "La testimonianza di Luigino (per tutti er cobra)",
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
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(
                          "Mi sento sinceramente discriminato. Un tempo potevo gridare alle ragazze e prendere per il culo i diversamente abili. Ora sono io ad essere bullizzato perchè non posso manco più insultare un gay",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Grazie per il tuo coraggio, Luigino.",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
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
                padding: const EdgeInsets.only(
                    top: 72, left: 16, right: 16, bottom: 40),
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
                        FlutterClipboard.copy('hello flutter friends').then(
                            (value) => ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar));
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
          ),
        ),
      ],
    );
  }

  _launchURL() async {
    const url = 'https://instagram.com/etero.fobia';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
