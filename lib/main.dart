import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
  ),
  );
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 100;

   void IncrementarEn100(){
     x += 100 ;
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statelees and Satefull"),
        ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
               x.toString(),
                style: TextStyle(
                  fontSize: 60,
                  
                ),
                ),      
          ElevatedButton(
            onPressed: (){
             IncrementarEn100();
            }, 
            child: Text(
              "Cambiar a 200",
              ),
              ),
            ElevatedButton(
            onPressed: (){
              print("el valor de x es : ${x.toString()}");
            }, 
            child: Text(
              "Print X",
              ),
              ),
          ],
          ),
       ), 
    );
  }
}