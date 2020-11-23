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

//link1 will be the guest infoormation
//linka will be about our podcast
class MyGuest {
  final String img;
  final String carrer;
  final String title;
  final String body;
  final String link1;
  final String link2;
  final String linkA;
  final String linkB;

  MyGuest(this.img, this.title, this.carrer, this.body, this.link1, this.link2,
      this.linkA, this.linkB);
}

class _MyHomePageState extends State<MyHomePage> {
  List<MyGuest> items = new List<MyGuest>();

  _MyHomePageState() {
    items.add(new MyGuest(
        "assets/1.png",
        "Kay Mela",
        "Rapper",
        "Underground Hip hop artist, who is passionate about making music and money at the same time.His first album titled 'Above and beyond ‘will be dropping really soon",
        "https://www.facebook.com/kgothatso.malemela.942",
        "https://www.instagram.com/kaymela_sa/",
        "https://www.instagram.com/tv/CHU3MUPJ1HZ/",
        "https://www.youtube.com/watch?v=SPt4RUqZToY&t=96s"));
    items.add(new MyGuest(
        "assets/2.png",
        "Koketso",
        "Social Entreprenuer",
        "Koketso is part of the multi-talented Urban elegance Team, which host an annual event on the 27 November that Merges ubarn wear with classic wear.",
        "https://www.facebook.com/koketso.magolego.39",
        "",
        "https://www.instagram.com/tv/CHRvzHhJY5Y/",
        "https://www.youtube.com/watch?v=OFAzKr0BzMI"));
    items.add(new MyGuest(
        "assets/3.png",
        "Bridget Mokalapa",
        "Poet",
        "A poet, motivational speaker and an audit student. In this conversation we talked about women abuse and the issues that women are facing in black communities.",
        "https://www.facebook.com/breeigh.nolo.5",
        "https://www.instagram.com/tshenolobreeigh/",
        "https://www.instagram.com/tv/CHISRHcJ50k/",
        "https://www.youtube.com/watch?v=RctJJHL1MgY"));
    items.add(new MyGuest(
        "assets/4.png",
        "Sgwala",
        "Rapper",
        "An un-orthoox eccentic rapper/fashion10ista who's not shy about expressing his views on music.",
        "https://www.facebook.com/thato.legodi.92102",
        "",
        "https://www.instagram.com/p/CG_9IYUJz2i/",
        "https://www.youtube.com/watch?v=HOKBNFtsMmM"
        //we need to hook up that with the content
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
                builder: (context) => MyDetailPage(items[index])));
      },
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          //padding: const EdgeInsets.only(left: 1),
                          Text(
                            items[index].title,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          // ),

                          // Text(
                          //   items[index].carrer,
                          //   style: TextStyle(
                          //     fontSize: 15,
                          //     color: LightGray1,
                          //     fontWeight: FontWeight.w300,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                Icon(Icons.navigate_next, color: Colors.white),
              ],
            ),
          )),
    );
  } //easy to work with, self esteem

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Center(
            child: Text("Azania's Guest",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
          ),
          backgroundColor: Colors.black,
        ),
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
