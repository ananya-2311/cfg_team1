import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  static const TextStyle White16Style = TextStyle(
      fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold);

  static const TextStyle Black20Style = TextStyle(
      fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);

  static const TextStyle Black5415Style = TextStyle(
      fontSize: 15.0, color: Colors.black54, fontWeight: FontWeight.bold);

  static const TextStyle Blue15Style = TextStyle(
      fontSize: 15.0, color: Colors.blue, fontWeight: FontWeight.bold);
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      // resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0, right: 20 , left: 100),
                child: Image.asset("images/login_page_image.jpg"),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Form(
              // key: _loginFormKey,
              child: Padding(
                padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 240.0),
                      child: Text(
                        'WEHelp',
                        style: GoogleFonts.alice(textStyle: Black20Style),
                      ),
                    ),
                    SizedBox(height: 180),
                    Container(
                      width: double.infinity,
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ],
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Login',
                              style: GoogleFonts.alice(textStyle: Black20Style),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 22.0,
                                  color: Colors.black26,
                                ),
                                hintText: "Email ID.",
                                labelText: "Email ID.",
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 16.0),
                              ),
                              // controller: emailInputController,
                              // keyboardType: TextInputType.emailAddress,
                              // validator: emailValidator,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock,
                                  size: 22.0,
                                  color: Colors.black26,
                                ),
                                hintText: "Password",
                                labelText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.black26, fontSize: 16.0),
                              ),
                              // controller: pwdInputController,
                              // validator: pwdValidator,
                            ),
                            SizedBox(height: 25.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    "Forgot Password?",
                                    style:
                                    GoogleFonts.average(textStyle: Blue15Style),
                                  ),
                                  // onTap: () {
                                  //   Navigator.push(
                                  //       context,
                                  //       new MaterialPageRoute(
                                  //           builder: (context) =>
                                  //           new ForgotPassword()));
                                  // },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(width: 12.0),
                            // GestureDetector(
                            //   onTap: _radio,
                            //   child: radioButton(_isSelected),
                            // ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Remember me",
                              style:
                              GoogleFonts.average(textStyle: Black5415Style),
                            )
                          ],
                        ),
                        InkWell(
                          child: Container(
                            width: 130.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF17ead9), Color(0xFF6078ea)],
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0),
                              ],
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                // onTap: () {
                                //   if (_loginFormKey.currentState.validate()) {
                                //     FirebaseAuth.instance
                                //         .signInWithEmailAndPassword(
                                //         email: emailInputController.text,
                                //         password: pwdInputController.text)
                                //         .then((currentUser) => Firestore.instance
                                //         .collection("users")
                                //         .where('uid', isEqualTo: currentUser.uid)
                                //         .getDocuments()
                                //         .then((docs){
                                //       if(docs.documents[0].exists){
                                //         if(docs.documents[0].data['role'] == 'teacher'){
                                //           Navigator.pushReplacement(
                                //               context,
                                //               MaterialPageRoute(
                                //                   builder: (context) => TeacherTimetable(
                                //                       uid: currentUser.uid
                                //                   )));
                                //         }
                                //         else if(docs.documents[0].data['role'] == 'student'){
                                //           Navigator.pushReplacement(
                                //               context,
                                //               MaterialPageRoute(
                                //                   builder: (context) => Timetable(
                                //                       uid: currentUser.uid
                                //                   )));
                                //         }
                                //       }
                                //     })
                                //         .catchError((err) => print(err)))
                                //         .catchError((err) => print(err));
                                //   }
                                // },
                                child: Center(
                                  child: Text(
                                    "SIGNIN",
                                    style: GoogleFonts.average(
                                        textStyle: White16Style),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "New User?",
                          style: GoogleFonts.average(textStyle: Black5415Style),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> new SignUp()));
                          },
                          child: Text(
                            "SignUp",
                            // style: GoogleFonts.average(textStyle: Blue15Style),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
