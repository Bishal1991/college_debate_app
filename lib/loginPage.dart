import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled/SignUpPage.dart';
import 'package:untitled/homepage.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in Page")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 100.0),
          child: Container(
            padding: EdgeInsets.all(20),
            width: 350,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      width: 310,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "enter username",
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      width: 310,
                        margin: EdgeInsets.only(bottom: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter password",
                          ),
                        ),
                      ),
                  ],
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    textStyle: TextStyle(fontSize: 20),
                    elevation: 10,
                    foregroundColor: Colors.white70,
                    backgroundColor: Colors.black,
                  ),

                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text("Login"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => Signuppage()
                        ),
                      );
                    },
                    child: Text("sign up?")
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
