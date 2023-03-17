import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  //SoalPrioritas1.2
  final List<Map<String, String>> dataList = [
    {"name": "Cassandra Lee", "handphone": "1-232-3232-434 x3232"},
    {"name": "Binta Bailina", "handphone": "010-6237-323-32 x02323"},
    {"name": "Marten Joe ", "handphone": "1-4673-32-223"},
    {"name": "Patricia Lebsack", "handphone": "4394-32 x9233"},
    {"name": "Chelsey Dietrich", "handphone": "(2332-32232-2332)"},
    {"name": "Mrs. Deni Schulist", "handphone": "1-343-7676-9439"},
    {"name": "Kiara Stevani", "handphone": "3234.03.04342"},
    {"name": "Mikoi", "handphone": "32233-5454 4342"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App'),
      ),
      drawer: Drawer(
        child: ListView(children: const [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ]),
      ),
      // //body for SoalPrioritas 1.1
      // body: const Center(
      //   child: Text(
      //     'This is materialApp',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
      //body for SoalPrioritas 1.2
      body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            final data = dataList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  data["name"]![0],
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              title: Text(data["name"]!),
              subtitle: Text(data["handphone"]!),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Setting',
        )
      ]),
    );
  }
}
