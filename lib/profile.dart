import 'package:flutter/material.dart';
import 'package:untitled/loginPage.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: TextStyle(
                fontSize: 20,
              ),
              elevation: 10,
              foregroundColor: Colors.white70,
              backgroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => loginPage())
              );
            },
            child: Text("log out"),
          ),

            SizedBox(width: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  elevation: 10,
                  foregroundColor: Colors.white70,
                  backgroundColor: Colors.black,
                ),
                onPressed: (){
                Navigator.of(context).pop();
            },
                child: Text("back to home")
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
