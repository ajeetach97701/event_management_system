import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 60),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.red], begin: Top),
                image: DecorationImage(
                  image: AssetImage('Images/firstpage.jpg'),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    'Hey There,',
                    style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign in to continue!',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                        child: ListTile(
                          title: Center(
                            child: Text(
                              "Login by phone",
                              style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 200),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      color: Colors.deepPurple,
                      //margin:
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        title: Center(
                          child: Text(
                            "Login by email",
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
