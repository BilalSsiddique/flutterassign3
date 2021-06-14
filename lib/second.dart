import 'package:flutter/material.dart';
import 'package:ecomui/third.dart';

class Home extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
     
    return Scaffold(
    
    backgroundColor: Colors.grey[300],
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Ecom App UI (BILAL SIDDIQUE)",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
              ),),
              backgroundColor: Colors.grey[400],
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                )
              ]),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(

              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: ("Username"),
                        suffixIcon: Icon(Icons.search)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                      alignment: Alignment(-0.92,0.22), child: Text("History")),
                  res("assets/iphone12.png", "\$10", "Iphone 12"),
                  res("assets/samsung.png", "\$10", "Note 20 Ultra"),
                  res("assets/macbook.png", "\$10", "Macbook Air"),
                  res("assets/macbookpro.png", "\$10", "Macbook Pro"),
                  res("assets/game.png", "\$10", "Gaming Pc"),
                  res("assets/key.jpg", "\$10", "Backlit Keyboard"),
                  res("assets/merce.jpg","\$10","Mercedes"),
                  res("assets/mutt.jpg","\$10","Mutton"),
                  res("assets/bike.jpg","\$10","Roadster"),
                ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => User()));
                },
                child: Text("Next Screen"))
                ],
              ),
            ),
          )
    );
  }
}


String a;
String b;
String c;
Widget res(a, b, c) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(a),
    ),
    title: Text(
      c,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
    ),
    subtitle: Row(
      children: [

         Icon(
              Icons.star,
              color: Colors.yellow[500],
              size: 15,
        ),
        Text("5.0 (23 Reviews)"),

      ],
    ),
    trailing: Text(b),
  );
}
