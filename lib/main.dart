import 'package:ecomui/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Ecom App UI (BILAL SIDDIQUE)",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.grey[400],
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              )
            )
          ]),
      body: SingleChildScrollView(
      
        child: Column(
          
          
          children: [
            
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Iphone 12",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Note 20 Ultra",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Macbook Air",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Macbook Pro",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Gaming Pc",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Backlit Keyboard",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Mercedes",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Mutton",context),
            screen2(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfoCgclyo_OM_5kz-0M0ZFP39n3ZHcHivyaQ&usqp=CAU',
                "Roadster",context),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text("Next Screen"))
          ],
        ),
      ),
    );
  }
}

String d;
String e;
Widget screen2(d, e,context) {
  return (Container(
    // width:MediaQuery.of(context).size.width*0.9,
    // height:MediaQuery.of(context).size.height*0.9,
    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal:2.0),
    child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        semanticContainer: true,
        elevation: 0.5,
        child: Row(children: [
          
            
              Expanded(
                              child: Image.network(
                  d,
                  fit: BoxFit.fill,
                ),
              ),
            
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[500],
                      size: 15,
                    ),
                    Text(" 5.0 (23 Review),"),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("20 Pieces "),
                    Text(
                      "   \$90",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.purple),
                    ),
                  ],
                ),
                SizedBox(
                  height: 9,
                ),
                Text("Quantity: 1 "),
              ],
            ),
          )
        ])),
  ));
}
