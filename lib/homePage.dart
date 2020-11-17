import 'package:flutter/material.dart';
import 'package:azaniaweb29/moreInfo.dart';

final Black = const Color(0xF000000);
final LightGray = const Color(0xFF18F8AA);
final Blue = const Color(0xFF3169DD);
const LightGray1 = const Color(0xFF6F6D6D);

final LightGrayFrame = const Color(0xFF171717);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class MyGuest {
  final String img;
  final String carrer;
  final String title;
  final String body;
  final String link1;
  final String link2;
  final String link3;

  MyGuest(this.img, this.title, this.carrer, this.body, this.link1, this.link2,
      this.link3);
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyGuest> items = new List<MyGuest>();

  _MyHomePageState() {
    items.add(new MyGuest(
      "assets/1.png",
      "Kay Mela",
      "Rapper",
      "Underground Hip hop artist, who is passionate about making music and money at the same time His first album titled 'Above and beyond will be dropping on 03 Feb 2021'",
      "https://www.facebook.com/kgothatso.malemela.942",
      "https://www.instagram.com/",
      "https://www.youtube.com/",
    ));
    items.add(new MyGuest(
      "assets/2.png",
      "Koketso Urban Elegance",
      "Social Entreprenuer",
      "Koketso is part of the multi-talented Urban elegance Team, which host an annual event on the 27 November that Merges ubarn wear with classic wear.",
      "https://www.facebook.com/koketso.magolego.39",
      "https://www.instagram.com/",
      "https://www.youtube.com/",
    ));
    items.add(new MyGuest(
      "assets/3.png",
      "Bridget Mokalapa",
      "Poet",
      "A poet, Motivational speaker and an audit student. We set down with her to get her view about life, woman abuse and whole lot of isseues that we're facing in our communities",
      "https://www.facebook.com/breeigh.nolo.5",
      "https://www.instagram.com/",
      "https://www.youtube.com/",
    ));
    items.add(new MyGuest(
      "assets/4.png",
      "Skwala",
      "Rapper",
      "An un-orthoox eccentic rapper/fashionista who's not shy about expressing his views on music.",
      "https://www.facebook.com/thato.legodi.92102",
      "https://www.instagram.com/",
      "https://www.youtube.com/",
    ));
    //items.add(new MySuperHero("assets/image1.jpg", "Black Widow",
    //"Despite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers."));
  }

  Widget GuestCell(BuildContext ctx, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                //builder: (context) => MoreInfo(items[index])));
                builder: (context) => MyDetailPage(items[index])));
      },
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          margin: EdgeInsets.all(8),
          elevation: 4.0,
          color: LightGrayFrame,
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    ClipOval(
                      child: Image.asset(
                        items[index].img,
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            //color: gren,
                            child: Text(
                              items[index].title,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 0.0),
                        //   child: Container(
                        //     alignment: Alignment.centerLeft,
                        //     //color: gren,
                        //     child: Text(
                        //       items[index].carrer,
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         color: LightGray1,
                        //         fontWeight: FontWeight.w300,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.navigate_next, color: Colors.white),
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //title: Text("Azania's Guest"),
        title: Text("Azania's Guest",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => GuestCell(context, index),
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// child: Stack(
//           children: <Widget>[
//             ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) => GuestCell(context, index),
//             ),
//           ],
//         ),
