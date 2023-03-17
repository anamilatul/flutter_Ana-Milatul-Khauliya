import 'package:flutter/material.dart';

class Explorasi extends StatelessWidget {
  Explorasi({super.key});
  final List data = [
    'Learn Flutter',
    'Learn ReactJS',
    'Learn VueJS',
    'Learn Tailwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learn Digital Marketing',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter App"),
        centerTitle: true,
        backgroundColor: const Color(0xff6200EE),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  data[index],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff03DAC5),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Information',
            )
          ]),
    );
  }
}
