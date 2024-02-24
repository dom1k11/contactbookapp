import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List contactList = [
    "Joe Belfiore",
    "Bill Gates",
    "Mark Zuckerberg"];
  List contactInfo = [
    "In a world far away",
    "What I'm doing here?",
    "Really Busy, WhatsApp only"];
  List photoList = [
    'assets/images/joe-belfiore',
    'assets/images/bill-gates',
    'assets/images/mark-zuk',
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text(
            "Contacts",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {
              // Ваша логика при нажатии на иконку
            },
            icon: const Icon(Icons.menu),
            color: Colors.white, // Задаем белый цвет для иконки
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),



        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 50,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: contactList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(20),
                width: 30,
                height: 100,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 5, color: Colors.black38),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(photoList[index]),
                          ),
                        ),
                      ],
                    ),


                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            contactList[index], // Выводим текущий элемент массива
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5.0),
                        child: Text(contactInfo[index]),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),

        ));
  }
}
