import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuda_app_clone/utilities/constants.dart';
import 'package:kuda_app_clone/views/home/homescreen.dart';

class AuthorizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: Get.height,
            width: Get.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset(
                        'assets/images/resized-1.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      'Welcome Back',
                      style: GoogleFonts.muli(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      'Usman Bello',
                      style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.8,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Secret PIN',
                    style: GoogleFonts.muli(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 3),
                  TextField(
                    cursorColor: primaryColor,
                    obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      hintText: '******',
                      hintStyle: TextStyle(),
                      contentPadding: EdgeInsets.all(16),
                      filled: true,
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      Get.to(() => HomeScreen());
                    },
                    child: Text(
                      'Sign In',
                      style: GoogleFonts.muli(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.8,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor),
                        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 20))),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Forgot your PIN or this isn\'t you',
                      style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Sign out',
                      style: GoogleFonts.muli(
                        color: Colors.green,
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
