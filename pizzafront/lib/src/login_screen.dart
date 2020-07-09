import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<String> user;
  String username='';
  String password='';


  Widget _entryField(String title,String placeholder , {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white54),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(onChanged: (Text){
            setState(() {
              placeholder=Text;
            });
          },
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(onTap: ()async{

      final SharedPreferences prefs = await _prefs;
      print(password);
      if (username.length==0){
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text('Username cannot be empty '),
              duration: Duration(seconds: 3),
            ));

      }else if (password.length==0){
        _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              content: Text('Password cannot be empty '),
              duration: Duration(seconds: 3),
            ));

      }else {
        var url = "https://serene-stream-47151.herokuapp.com/clients/login";
        print('started a request');

        var response = await http.post(url, body: {'userName': username, 'password':password,'address': ''},headers: {"Accept": "application/json"});
        prefs.setString('user', convert.jsonDecode(response.body)['userName']).then((value) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => home()));
          print('success');
          print(value);
        });
        print('logged');
      }

      /*prefs.setString('user', 'Test username').then((value) {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => home()));
      print('success');
      print(value);
      }
      );*/

      }

    ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 1)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffe12301), Color(0xfffffa8a)])),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text('or',style: TextStyle(color: Colors.white54),),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  //final AuthService _auth = AuthService();
  Widget _facebookButton() {
    return GestureDetector(
      onTap: () async {
        dynamic result = null;
        if (result == null) {
          print('not signed in');
        } else {
          print('looo');
          print(result);
          Navigator.pop(context);
        }
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff1959a9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('f',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff2872ba),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                alignment: Alignment.center,
                child: Text('Log in with Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,color:Colors.white54),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              /*Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));*/
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: Color(0xffdba24a),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Sli',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe12301),
          ),
          children: [
            TextSpan(
              text: 'ceL',
              style: TextStyle(color: Color(0xffe1d800), fontSize: 30),
            ),
            TextSpan(
              text: 'ine',
              style: TextStyle(color: Color(0xffdba24a), fontSize: 30),
            ),
          ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("username",username),
        _entryField("Password", password,isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _scaffoldKey,
        body: Center(heightFactor: 1,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            child: Stack(
              children: <Widget>[FittedBox(
                child: Image(image: AssetImage('images/background.jpg'),
                fit: BoxFit.fill,height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,),fit: BoxFit.fill,
              ),
                Container(width: MediaQuery.of(context).size.width*0.5,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: SizedBox(),
                      ),
                      _title(),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Username',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white54),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(onChanged: (Text){
                              setState(() {
                                username=Text;
                              });
                            },
                                obscureText: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Color(0xfff3f3f4),
                                    filled: true))
                          ],
                        ),
                      ),Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Password',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white54),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(onChanged: (Text){
                              setState(() {
                                password=Text;
                              });
                            },
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    fillColor: Color(0xfff3f3f4),
                                    filled: true))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _submitButton(),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerRight,
                        child: Text('Forgot Password ?',
                            style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                      _divider(),
                      _facebookButton(),
                      Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _createAccountLabel(),
                ),
                /*Positioned(top: 40, left: 0, child: _backButton())*/
                /*Positioned(
                    top: -MediaQuery.of(context).size.height * .15,
                    right: -MediaQuery.of(context).size.width * .4,
                    child: BezierContainer())*/
              ],
            ),
          ),
        ));
  }
}