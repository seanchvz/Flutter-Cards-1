// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:HomePagee(),
  debugShowCheckedModeBanner: false,
));

class HomePagee extends StatelessWidget {
  const HomePagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ), // one side only for the border
              color: Colors.blue[900],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left:0,
                  child: Container( 
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration( // white thing sa loob
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: 90, // Position of the text
                  left: 20,
                  child: Text("Penguin", // text inside the widget
                style: TextStyle(fontSize: 20,
                color: Colors.blue[900]),
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Container(
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 20,
                  child: Material(

                  child:Container(
                    height: 180,
                    width: 200,// 90 percent of the screen
                    decoration: BoxDecoration( 
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(0.0)
                    ),
                  // Content
                  ),
                  ))
                  // Positioned(child: 
                  // Card(
                  //   elevation:10.0
                  //   shape: RoundedRectangleBorder,
                  //   ))
              ],
            ),
          )

        ],
      ),
    );
  }
}
