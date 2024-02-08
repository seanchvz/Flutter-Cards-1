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
      backgroundColor: Colors.green[100],
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Icon(Icons.food_bank), // 
            SizedBox(width: 8), // 
            Text("BURGER"),
          ],
        ),
      ),
    ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 400,
                    height: double.infinity,
                    child: Image.asset("assets/burger.jpeg"),
                    decoration: BoxDecoration(
          color: Colors.grey,
          
                    ),
                  ),
                  Expanded(
                    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text(
              'Agriculture is good for both humans and animals', 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text('meow meow meow meow meow', style: TextStyle(fontSize: 15)),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
            const Text('meow meow meow meow meow', style: TextStyle(fontSize: 15)),
                
                
               
              ],
            ),
          ],
                    ),
                  ),
          
                  Padding(
                    padding:EdgeInsets.all(16.0),
                    child: Container(
          color: Colors.black,
          height: 10,
          width: 10,
                  ),
                  )
                ],
              ),
            ),
          ),
          
          
          
            ],
          ),
        ),
    );
  }
}