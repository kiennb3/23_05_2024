import 'dart:core';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Menu',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
String? _selectItem;







  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dropdown Menu'),
      ),
      body: Column(

        children: [DropdownButton<String>(
          borderRadius: BorderRadius.circular(10.0),
           style: const TextStyle(
           ),
          value: _selectItem,
          onChanged: (String? newValue){
              setState(() {
               _selectItem = newValue;
    });
          }, items: <String>['option1','options2','options3','options4']
            .map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value,
                  style: GoogleFonts.lobster(
                    textStyle:  const TextStyle(
                        color: Colors.blueAccent,
                        fontFamily: 'RobotoMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    )
                  )

                ),
              );
        }).toList()


        ),
      ]),

    );
  }
}
