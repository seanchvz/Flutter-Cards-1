  import 'package:flutter/material.dart';

  void main() => runApp(
    MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    )
  );
  // ignore: use_key_in_widget_constructors
  class MainPage extends StatelessWidget {
    late Size screenSize; // for screen size compatibility

    @override
    Widget build(BuildContext context) {
      screenSize = MediaQuery.of(context).size;
      return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue[100],
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Icon(Icons.handyman), // 
            SizedBox(width: 8), // 
            Text("Chavez"),
          ],
        ),
      ),
    ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
Expanded(
  child: Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: EdgeInsets.all(1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200, // Adjust height as needed
            decoration: BoxDecoration(
              color: Colors.blue, // Change the color to your desired one
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          const Text('Earpearp', style: TextStyle(fontSize: 20)),
          SizedBox(height: 10.0),
          Text('Php 836', style: TextStyle(fontSize: 30)),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {/* ... */},
                child: Text('Cart'),
              ),
              const SizedBox(width: 8),
              TextButton(
                onPressed: () {/* ... */},
                child: Text('Buy'),
              ),
            ],
          ),
        ],
      ),
    ),
  ),
),



                SizedBox(width: 10),
                Expanded(
                  child: Card( // Message Card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          
                          
                          SizedBox(height: 10),
                          Text('How are you?', style: TextStyle(fontSize: 20)),
                          Text('Feb. 6, 2024', style: TextStyle(fontSize: 10)),
                          Text('7:40 AM', style: TextStyle(fontSize: 10)),
                          
                        ],
                      ),
                    ),

                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}