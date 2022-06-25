import 'package:flutter/material.dart';
import 'package:login_page/config/pallete.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isMale = false;
  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgorundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bgimage.png"),
                        fit: BoxFit.fill)),
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  color: Color(0xFF3b5999).withOpacity(0.75),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Welcome To",
                            style: TextStyle(
                              fontSize: 25,
                              letterSpacing: 2,
                              color: Colors.yellow[700],
                            ),
                            children: [
                              TextSpan(
                                text: " The Galaxy,",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow[700],
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sign in To Continue",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )),
          //main box
          Positioned(
            top: 400,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ]
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              padding: EdgeInsets.all(20),
              height: 250,
              width: MediaQuery.of(context).size.width - 40,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Pallete.activeColor),
                          ),
                          Container(
                            height: 2,
                            width: 55,
                            color: Colors.orange,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Pallete.iconColor,
                              ),
                              hintText: 'Email',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Pallete.textColor1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(35.0)),
                              )),

                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.password_outlined,
                                color: Pallete.iconColor,
                              ),
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Pallete.textColor1),
                                borderRadius:
                                BorderRadius.all(Radius.circular(35.0)),
                              )),

                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            right: 0,
            left: 0,
            child: Center(
              child: Container(
                height: 90,
                width: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange.shade400, Colors.red.shade400],
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2,
                          spreadRadius: 1,
                        )
                      ]),
                  child:
                      Icon(Icons.arrow_forward_outlined, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
              top: 515,
              right: 0,
              left: 0,
              child: Container(

            child: Column(
              children: [
                Text("Forgot Password?", style: TextStyle(
                  color: Pallete.textColor1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
                Text('New to Galaxy? Sign up', style: TextStyle(
                  color: Pallete.textColor1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,

                ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
