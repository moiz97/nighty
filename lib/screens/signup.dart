import 'package:flutter/material.dart';

import 'login.dart';

class Signup extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xff0d4268)),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "nighty.",
                    style: TextStyle(
                      color: Color(0xff8e83eb),
                      fontSize: 35,
                      fontFamily: 'Varela_Round',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Varela_Round',
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Form(
                      child: Column(
                    key: _formKey,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Varela_Round',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              height: 3.0,
                              color: Colors.white,
                              fontSize:
                                  12, // sets the distance between label and input
                            ),
                            hintText: 'Enter your email',
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Varela_Round',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff2a5da8), Color(0xff7299d4)],
                              begin: Alignment.center,
                              end: Alignment.centerRight,
                              tileMode: TileMode.clamp),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.00,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Varela_Round',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              height: 3.0,
                              color: Colors.white,
                              fontSize:
                                  12, // sets the distance between label and input
                            ),
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Varela_Round',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xff2a5da8), Color(0xff7299d4)],
                              begin: Alignment.center,
                              end: Alignment.centerRight,
                              tileMode: TileMode.clamp),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Varela_Round',
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              height: 3.0,
                              color: Colors.white,
                              fontSize:
                                  12, // sets the distance between label and input
                            ),
                            hintText: 'Enter your password',
                            labelText: 'Repeat password',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Varela_Round',
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Color(0xff2a5da8), Color(0xff7299d4)],
                          begin: Alignment.center,
                          end: Alignment.centerRight,
                          tileMode: TileMode.clamp),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Center(
                    child: Text(
                      "By continuing, you agree ot your Terms of\nservice and Privacy policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        height: 50.0,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Signing up')));
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff2a5da8),
                                    Color(0xff7299d4)
                                  ],
                                  begin: Alignment.center,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Container(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.75,
                                  minHeight:
                                      MediaQuery.of(context).size.width * 0.75),
                              alignment: Alignment.center,
                              child: Text(
                                "Sign up",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Varela_Round',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Varela_Round',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                              color: Color(0xff8e83eb),
                              fontSize: 14,
                              fontFamily: 'Varela_Round',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
