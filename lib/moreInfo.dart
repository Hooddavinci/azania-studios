import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homePage.dart';

final Black = const Color(0xF000000);
final LightGreen = const Color(0xFF18F8AA);
final Blue = const Color(0xFF3169DD);
const PrimaryColor = const Color(0xFF151026);
const LightGray = const Color(0xFF6F6D6D);

final LightGrayFrame = const Color(0xFF171717);

class MyDetailPage extends StatefulWidget {
  MyGuest _superHero;

  MyDetailPage(MyGuest superHero) {
    _superHero = superHero;
  }

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_superHero);
}

class _MyDetailPageState extends State<MyDetailPage> {
  MyGuest superHero;

  _MyDetailPageState(MyGuest superHero) {
    this.superHero = superHero;
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text("Azania's Guest",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Image.asset(
                  superHero.img,
                  //height: _height,
                  //width: _width,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: green,
                  child: Text(
                    "Guest Info",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  elevation: 8,
                  color: LightGrayFrame,
                  margin: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          superHero.body,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: LightGray),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),

              //Social Media Handles
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: green,
                  child: Text(
                    "Social Media Handles",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Column(
                children: <Widget>[
                  //1st Row
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: green,
                          child: Text(
                            "FaceBook",
                            style: TextStyle(
                              fontSize: 15,
                              color: LightGray,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 10, left: 10),
                            child: GestureDetector(
                              onTap: () {
                                launch(superHero.link1);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 2.0, color: LightGreen),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 20, left: 20),
                                  child: Text("View",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: LightGreen,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: gren,
                          child: Text(
                            "Instagram",
                            style: TextStyle(
                              fontSize: 15,
                              color: LightGray,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 10, left: 10),
                            child: GestureDetector(
                              onTap: () {
                                launch(superHero.link2);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 2.0, color: LightGreen),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 20, left: 20),
                                  child: Text("View",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: LightGreen,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),

              //Social Media Handles
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: green,
                  child: Text(
                    "Podcast",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Column(
                children: <Widget>[
                  //1st Row

                  SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: gren,
                          child: Text(
                            "Instagram",
                            style: TextStyle(
                              fontSize: 15,
                              color: LightGray,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 10, left: 10),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 2.0, color: LightGreen),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 20, left: 20),
                                  child: Text("View",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: LightGreen,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          //color: gren,
                          child: Text(
                            "YouTube",
                            style: TextStyle(
                              fontSize: 15,
                              color: LightGray,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, right: 10, left: 10),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border:
                                      Border.all(width: 2.0, color: LightGreen),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 20, left: 20),
                                  child: Text("View",
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          color: LightGreen,
                                          fontWeight: FontWeight.w700)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
              ),

              Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Blue, LightGreen],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 85.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Back",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
