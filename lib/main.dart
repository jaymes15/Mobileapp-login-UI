import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "loginUi",
      theme:  ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }

}


class MyHomePage extends StatefulWidget{
  @override
  _MyHomestate createState() => _MyHomestate();
}

class _MyHomestate extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
         fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/back.jpg",
            fit: BoxFit.cover,
            //color: Colors.black54,
            //colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                Image.asset(
                 "assets/images/logo1.png",
                 height: 50.0,
                 width: 200.0,
               ),

              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical:25.0, horizontal: 30.0),
                        height:300.0,
                        width:300.0,
                        decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                             Padding(
                               padding: EdgeInsets.symmetric(
                                 vertical:25.0,
                               ),
                               child:  TextField(
                                 autocorrect:true,
                                 autofocus:true,
                                 style: TextStyle(
                                   fontSize:20.0,
                                 ),
                                 decoration: InputDecoration(
                                     hintText:"Username",
                                     border: InputBorder.none,
                                     filled: true,
                                     fillColor: Colors.grey[200],
                                     contentPadding: EdgeInsets.all(15.0)
                                 ),

                               ),
                             ),
                              TextField(
                                autocorrect:true,
                                obscureText: true,
                                autofocus:true,
                                style: TextStyle(
                                  fontSize:20.0,
                                ),
                                decoration: InputDecoration(
                                    hintText:"Password",
                                    border: InputBorder.none,
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                    contentPadding: EdgeInsets.all(15.0)
                                ),

                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,

                                  children: <Widget>[
                                    Text(
                                      "Forgot Password ?",
                                      style: TextStyle(
                                        fontSize:14.0,
                                        fontWeight: FontWeight.w700,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                onPressed: (){},
                                color: Colors.brown,
                                minWidth: 280.0,
                                splashColor: Colors.red,
                                padding: EdgeInsets.symmetric(
                                  vertical: 20.0,

                                ),
                                child:Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,

                                  )
                                ),
                              ),

                            ]
                        ),
                      )
                    ),
                  ],
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}