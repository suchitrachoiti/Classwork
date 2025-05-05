import 'package:flutter/material.dart';
import 'package:class_work/listview_page.dart';
import 'package:class_work/gridview_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void mySnackBar(String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color.fromARGB(255, 245, 158, 226),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  void myAlertDialog(String title, String content, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text(content),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                mySnackBar("Successful", context);
                Navigator.pop(context);
              },
              child: Text(
                "Yes",
                style: TextStyle(
                  color: const Color.fromARGB(255, 205, 121, 194),
                ),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("No", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: const Color.fromARGB(255, 228, 150, 226),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => mySnackBar("Search", context),
            icon: Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 140, 207),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg",
                ),
              ),
              accountName: Text("ABC"),
              accountEmail: Text("abc@example.com"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.swap_horiz),
              title: Text("Converter"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 247, 141, 224),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Card(
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.white,
          margin: EdgeInsets.all(24),
          child: Container(
            padding: EdgeInsets.all(24),
            width: 320,
            height: 520,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/image/flutter.png", height: 120),
                Text(
                  "MY APP",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 219, 127, 198),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed:
                      () => myAlertDialog(
                        "Confirmation",
                        "Do you want to proceed?",
                        context,
                      ),
                  icon: Icon(Icons.info),
                  label: Text("Show Alert"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 225, 160, 234),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ListviewPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.list),
                  label: Text("Go to ListView"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GridViewPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.grid_view),
                  label: Text("Go to GridView"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
