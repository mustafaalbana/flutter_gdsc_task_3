import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyTitle extends StatefulWidget {
  const MyTitle({super.key});

  @override
  State<MyTitle> createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(11.0),
                child: Text(
                  "june,24,2023 5:05 PM ",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(249, 0, 0, 0)),
                ),
              ),
              const ListTile(
                subtitle: Text(
                  "Today's Grocery List",
                  style: TextStyle(fontSize: 22),
                ),
                title: Text(
                  "Title",
                  style: TextStyle(fontSize: 44, color: Colors.grey),
                ),
              ),
             Padding(
               padding: const EdgeInsets.all(11.0),
               child: Column(children: const [
                 Text(
                   "data",
                   style: TextStyle(fontSize: 22),
                 ),
                Text(
                  "data",
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  "data",
                  style: TextStyle(fontSize: 22),
                ),
               ],),
             ),
             const SizedBox(
              height: 44,
             ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images.png",scale: 5,),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("take picture",style: TextStyle(fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                  Column(children: [
                      Image.asset("assets/download.png",scale: 5,),
                      const Text("to do list",style: TextStyle(fontWeight: FontWeight.bold))
                    ],),
                  Column(children: [
                      Image.asset("assets/download (1).png",scale: 5,),
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text("reminder",style: TextStyle(fontWeight: FontWeight.bold)),
                       )
                    ],)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
