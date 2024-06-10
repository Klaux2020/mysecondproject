import 'package:flutter/material.dart';
import 'package:mysecondproject/constants/constants.dart';

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
  int x = 0;
  int y = 0;

   void IncrementarEn100XeY(){
     x += 100 ;
     y += 100 ;
     setState(() {});
  }

   int Incrementar100(int variable){
     return variable += 100 ;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Column(
                    children: [Text(
                      "X",
                      style: titulo,
                      ), 
                      Text(
                      x.toString(),
                      style:titulo,
                      ), 
                     ],
                    ),
                    VerticalDivider(
                      width: 28
                      ),
                   Column(
                    children: [ Text(
                      "Y",
                      style: titulo,
                      ),
                      Text(
                      y.toString(),
                      style:titulo,
                    ),  
                     ],
                    ),
                  ],
                  ),
                  Divider(
                    thickness: 3,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                                onPressed: (){
                                 x=Incrementar100(x);
                                setState(() {});
                                }, 
                                child: Text(
                                  "Cambiar a x",
                                  ),
                                  ),
                                     ElevatedButton(
                                onPressed: (){
                                 y=Incrementar100(y);
                                setState(() {});
                                }, 
                                child: Text(
                                  "Cambiar a y",
                                  ),
                                  ),
                  ],
                ),
            ElevatedButton(
            onPressed: (){
              print("el valor de x es : ${x.toString()}");
              IncrementarEn100XeY();
            }, 
            child: Text(
              "Cambiar ambos",
              ),
              ),
          ],
          ),
       ), 
    );
  }
}