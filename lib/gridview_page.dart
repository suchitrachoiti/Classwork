import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      {
        "img": "https://cdn-icons-png.flaticon.com/512/732/732212.png",
        "title": "HTML",
      },
      {
        "img": "https://cdn-icons-png.flaticon.com/512/732/732190.png",
        "title": "CSS",
      },
      {
        "img": "https://cdn-icons-png.flaticon.com/512/919/919828.png",
        "title": "JS",
      },
      {
        "img": "https://cdn-icons-png.flaticon.com/512/919/919831.png",
        "title": "React",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.deepPurple.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(items[index]['img']!, width: 64),
                SizedBox(height: 10),
                Text(
                  items[index]['title']!,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
