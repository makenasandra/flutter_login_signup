import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/homeContainer.dart';

class entryPage extends StatefulWidget {
  entryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _entryPageState createState() => _entryPageState();
}


class _entryPageState extends State<entryPage> {
  String _chosenValue = 'Meal';

  Widget _appBar() {
    return AppBar(
        title: Text('New Entry'),
        backgroundColor: Color(0xff028a0f),
      );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }
  

  Widget _dropdownMenu(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          DropdownButton<String>(
      focusColor:Colors.black,
      value: _chosenValue,
      //elevation: 5,
      style: TextStyle(color: Colors.black),
      iconEnabledColor:Colors.black,
      items: <String>[
        'Meal',
        'Snack',
        'Drink',
        'Workout',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,style:TextStyle(color:Colors.black),),
        );
      }).toList(),
      hint:Text(
        "Please choose category",
        style: TextStyle(
            color: Colors.black38,
            fontSize: 20,
            fontWeight: FontWeight.w800),
      ),
      onChanged: (String value) {
        setState(() {
          _chosenValue = value;
        });
      },
  )

         ],
      ),
    );
  }

  Widget _buttons() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              
            },
            child: Container(
            width: MediaQuery.of(context).size.width * 0.25,
            padding: EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff028a0f), Color(0xffb0f3c8)])),
            child: Text(
              'Save',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
          ),
          SizedBox(
            width: 70,
          ),
           InkWell(
      onTap: () {
        
            
      },
      child: Container(
      width: MediaQuery.of(context).size.width * 0.25,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff028a0f), Color(0xffb0f3c8)])),
      child: Text(
        'Cancel',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    )
    )
  
        ],
      ),
    );
  }

  Widget _entryFieldsWidget() {
      return Column(
        children: <Widget>[
          _dropdownMenu('Category'),
          _entryField("Description"),
        ],
      );
  }



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _appBar(),
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
                   _entryFieldsWidget(),
                  // SizedBox(height: 50),
                  // _emailPasswordWidget(),
                  SizedBox(height: 5),
                  _buttons()
                  // _submitButton(),
                  // _createAccountLabel(),
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
