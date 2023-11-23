import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _emailbar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DBCE),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Text(
                  "Log In to your account ",
                  style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Good to see you again enter your details  below to',
                      style: GoogleFonts.aBeeZee(fontSize: 11),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'continue ordering',
                      style: GoogleFonts.aBeeZee(fontSize: 11),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty && !value.contains('@')) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        controller: _emailbar,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                              ),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 15,
                            ),
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.email,
                              size: 30,
                            )),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty && !value.contains('@')) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                          controller: _emailbar,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                ),
                              ),
                              hintStyle: TextStyle(
                                fontSize: 15,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 30,
                              ),
                              focusColor: null,
                              suffixIcon: Icon(Icons.visibility_off)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot password?"),
                  Text(
                    "Reset",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            
              const SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    borderRadius:BorderRadius.circular(20) ),
                    child: Image.network(
                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                    ),
                  ),
              const     SizedBox(width: 10,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                    borderRadius:BorderRadius.circular(20) ),
                    child: Image.network(
                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
