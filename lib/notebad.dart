import 'package:flutter/material.dart';
import 'package:flutter_gdsc_task_3/title.dart';

class NoteBadScreen extends StatefulWidget {
  const NoteBadScreen({super.key});

  @override
  State<NoteBadScreen> createState() => _NoteBadScreenState();
}

class _NoteBadScreenState extends State<NoteBadScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyTitle()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          )),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 19, bottom: 11),
            alignment: Alignment.bottomLeft,
            height: height / 4.5,
            child: const Text(
              "NotePad",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          // ignore: prefer_const_constructors
          Container(
            height: height / 17,
            margin: const EdgeInsets.symmetric(horizontal: 19),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22)),
                  prefixIcon: const Icon(Icons.search),
                  labelText: "Search Notes"),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin:
                const EdgeInsets.only(top: 50, left: 19, right: 19, bottom: 11),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 144, 249, 235),
            ),
            child: const ListTile(
              title: Text(
                "Today's Grocery List",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "june,26,2023 8:05 PM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.only(top: 22, left: 19, right: 19),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 242, 249, 144),
            ),
            child: const ListTile(
              title: Text(
                "Rich dad poor dad quotes",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "june,28,2023 5:05 PM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
