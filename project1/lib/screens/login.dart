// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'constants.dart';
import 'mytextfield.dart';
import 'register.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[150],
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: width > 600 ? width * 0.25 : 15),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                    pass: false,
                    text: "Enter Email : ",
                    inputtype: TextInputType.emailAddress),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    pass: true,
                    text: "Enter Password : ",
                    inputtype: TextInputType.text),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(fontSize: 20)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(mainbuttoncolor),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const registerpage())));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
