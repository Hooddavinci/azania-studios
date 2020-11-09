import 'package:flutter/material.dart';

final DarkGray = const Color(0xFF231F20);
final LightGray = const Color(0xFFF7F7F7);
final DarkGreen = const Color(0xFF7CA43C);
final LightGreen = const Color(0xFFD7EAB8);
final shade = const Color(0xFFDADADA);
final darkgrayword = const Color(0xFF808080);

final white1 = const Color(0xFFE9EBF0);
final DarkGray1 = const Color(0xFF3D3D4A);
final black1 = const Color(0xFF17171A);
final blue1 = const Color(0xFF3169DD);
final orange1 = const Color(0xFFFB7349);

class singUp_view extends StatefulWidget {
  @override
  _singUp_viewState createState() => _singUp_viewState();
}

class _singUp_viewState extends State<singUp_view> {
  var _uname;
  var _surname;
  var _pnumber;
  var _branch;

  final nameCon = new TextEditingController();
  final surnameCon = new TextEditingController();
  final pnumberCon = new TextEditingController();
  final branchCon = new TextEditingController();

  final formKey = GlobalKey<FormState>();
  String _email, _password, _name;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: _width,
        height: _height,
        color: black1,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),

              //1.HEADING
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  //color: LightGray,
                  child: Text(
                    "Welcome to Azania",
                    style: TextStyle(
                        fontSize: 100,
                        color: LightGray,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),

              // width: MediaQuery.of(context).size.width * 0.7,
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: DarkGreen,
                textColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
                onPressed: () async {
                  //adding talues to the UserInfo
                },
              ),

              SizedBox(
                height: 30.0,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    List<Widget> textFileds = [];

    textFileds.add(TextFormField(
      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
      decoration: buildSingUpInputDecoration("Name"),
      onSaved: (value) => _email = value,
    ));

    textFileds.add(
      SizedBox(
        height: 30.0,
      ),
    );

    textFileds.add(TextFormField(
      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
      decoration: buildSingUpInputDecoration("Surname"),
      onSaved: (value) => _password = value,
    ));

    textFileds.add(
      SizedBox(
        height: 30.0,
      ),
    );

    textFileds.add(TextFormField(
      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
      decoration: buildSingUpInputDecoration(
        "Phone Number",
      ),
      onSaved: (value) => _password = value,
    ));

    textFileds.add(
      SizedBox(
        height: 30.0,
      ),
    );
    textFileds.add(TextFormField(
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.w200, color: DarkGreen),
      decoration: buildSingUpInputDecoration("Branch"),
      onSaved: (value) => _password = value,
    ));

    return textFileds;
  }

  InputDecoration buildSingUpInputDecoration(String hint) {
    return InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        focusColor: Colors.black,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40.0),
            borderSide: BorderSide(color: Colors.white, width: 3.0)));
  }

  InputDecoration buildShadowInputDecoration() {
    return InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusColor: DarkGreen,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: BorderSide(color: Colors.white, width: 3.0)));
  }
}
