import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
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
  bool switchKonrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Switch(
              value:switchKonrol,
              activeTrackColor:Color(0xffa2c17b),
              activeColor: Color(0xffc8dab1),
              inactiveTrackColor:Colors.black54,
              inactiveThumbColor: Colors.black,
              onChanged:(veri){
                setState(() {
                  switchKonrol=veri;
                });
                print("Switch : $veri");
              },
            ),
            ElevatedButton(
              child: Text("Göster"),
              onPressed:(){
                print("Switch Durum : $switchKonrol");
              } ,
            )
          ],
        ),
      ),
    
    );
  }
}
