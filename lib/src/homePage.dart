import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/entryPage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/homeContainer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  Widget _avatar() {
    return  Container(
      alignment: Alignment.topLeft,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            radius: 30,
            child: const Text('NO'),
          ),

          SizedBox(
            width: 20,
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Njoki Omollo',
                  style:GoogleFonts.portLligatSans(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffe46b10),
                  )
                ),

                SizedBox(
                  height: 5,
                ),

                Text('My profile',
                  textAlign: TextAlign.left, 
                  style:GoogleFonts.portLligatSans(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                    color: Color(0xffe46b10),
                  )
                )
              ],
            )
          )

        ],
      )
      
    );

  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _stattext() {
    return Container(
      alignment: Alignment.topLeft,
      child: Text('My Statistics',
                  style:GoogleFonts.portLligatSans(
                    textStyle: Theme.of(context).textTheme.display1,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  )
                )
    );
  }

  Widget _stats() {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.breakfast_dining, color: Colors.black)
              ),

              Text('Meals',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
              ),
            ]
          ),

          SizedBox(width: width* .15),

          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.cake, color: Colors.black)
              ),

              Text('Snacks',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
              ),
            ]
          ),

          SizedBox(width: width* .15),

          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.emoji_food_beverage, color: Colors.black)
              ),

              Text('Drinks',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
              ),
            ]
          ),

          SizedBox(width: width* .15),

          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.directions_walk, color: Colors.black)
              ),

              Text('Workouts',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)
              ),
            ]
          )
        ],
      ),
    );
  }

  Widget _newEntryButton() {
    return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => entryPage()));
        },
        child: const Icon(Icons.add,
          size: 40),
        backgroundColor: Color(0xff028a0f),
      );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: homeContainer()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: height* .055),
                   _avatar(),
                  // SizedBox(height: 50),
                  // _emailPasswordWidget(),
                  SizedBox(height: 5),
                  // _submitButton(),
                  _divider(),
                  // _facebookButton(),
                  _stattext(),
                  _stats(),
                  _divider()
                  // _createAccountLabel(),
                ],
              ),
            ),
          ),
          
        ],
      ),
      ),
      floatingActionButton:_newEntryButton()
    
    );
  }
}
