import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              mySnackBar("Search pressed", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              mySnackBar("Settings pressed", context);
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 92, 90, 93),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.brown,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),

        height: 500,
        width: 300,
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),

        //margin: EdgeInsets.fromLTRB(20, 50, 10, 5),
        child: Column(children: [Image.asset("assets/image/flutter.png")]),
        //Text(
        //"Hello",
        //style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
    //);
  }
}
