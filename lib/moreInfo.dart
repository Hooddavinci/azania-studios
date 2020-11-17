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
      appBar: AppBar(
        title: Text(superHero.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700)),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 8.0,
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
                  height: _height * 0.5,
                  width: _width,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: green,
                  child: Text(
                    "Guest Info",
                    style: TextStyle(
                        fontSize: 30,
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
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: LightGray),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
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
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                              fontSize: 20,
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
                              fontSize: 20,
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
                              fontSize: 20,
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
                                launch(superHero.link3);
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
                ],
              ),

              SizedBox(
                height: 20,
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
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                              fontSize: 20,
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
                                // showBottomSheetD(context);
                                //likedLost = "liked";
                                //sHeading = "Items they liked?";
                                //print(productList[1]);
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
                              fontSize: 20,
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
                                // showBottomSheetD(context);
                                //likedLost = "liked";
                                //sHeading = "Items they liked?";
                                //print(productList[1]);
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
                            "YouTube",
                            style: TextStyle(
                              fontSize: 20,
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
                                // showBottomSheetD(context);
                                //likedLost = "liked";
                                //sHeading = "Items they liked?";
                                //print(productList[1]);
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
                ],
              ),

              SizedBox(
                height: 40,
              ),

              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)),
                color: LightGreen,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
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

//Center(
//     child: Column(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: <Widget>[
//     SizedBox(
//       height: 80,
//     ),
//     Padding(
//       padding: const EdgeInsets.only(left: 20),
//       child: Hero(
//         //transitionOnUserGestures: true,
//         tag: superHero,
//         child: Transform.scale(
//           scale: 4.0,
//           child: Image.asset(
//             superHero.img,
//             height: 100,
//             width: 250,
//           ),
//         ),
//       ),
//     ),
//     SizedBox(
//       height: 20,
//     ),
//     Text(
//       "Guest",
//       style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//     ),
//     SizedBox(
//       height: 20,
//     ),
//

//Card(
//         elevation: 8,
//         margin: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(16),
//               child: Text(superHero.body),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             RaisedButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30.0)),
//               color: Blue,
//               textColor: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Facebook",
//                   style: TextStyle(fontSize: 20.0, color: Colors.white),
//                 ),
//               ),
//               onPressed: () {
//                 launch(superHero.link);
//                 setState(() {});
//               },
//             ),
//             SizedBox(
//               height: 10,
//             ),
//           ],
//         )),
//   ],
// )),

// RaisedButton(
//   shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(30.0)),
//   color: LightGreen,
//   textColor: Colors.black,
//   child: Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text(
//       "View More",
//       style:
//           TextStyle(fontSize: 20.0, color: Colors.white),
//     ),
//   ),
//   onPressed: () {
//     launch(superHero.link);
//     setState(() {});
//   },
// ),
