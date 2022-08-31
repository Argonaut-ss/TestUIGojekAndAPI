import 'package:flutter/material.dart';
import 'package:ui_gojek/Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 38),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 400,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  'assets/logo_gojek.png',
                  width: 85,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome, Keith!', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    SizedBox(height: 12),
                    Text('Discover a hassle-free life with the super app for all you needs.', style: TextStyle(color: Colors.grey[700], fontSize: 16),)
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ListAllLeague()));
                        },
                        style: ElevatedButton.styleFrom(primary: Color(0xff18791f),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),),
                        child: Text('Login as Keith', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),)),
                    SizedBox(height: 8,),
                    ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(primary: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Color(0xff18791f)),
                            borderRadius: BorderRadius.circular(20)),),
                        child: Text('Login with phone number', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff18791f)),)),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 30, right: 10),
                child: RichText(
                    text: const TextSpan(
                        text: 'By logging in or registering , you agree to our',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Terms of Service ',
                              style: TextStyle(
                                  color: Color.fromRGBO(22, 121, 29, 1),
                                  fontWeight: FontWeight.bold)),
                          TextSpan(text: 'and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  color: Color.fromRGBO(22, 121, 29, 1),
                                  fontWeight: FontWeight.bold))
                        ])),
              )
            ],
          ),
        ),
        ),
    );
  }
}
