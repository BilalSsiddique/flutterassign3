import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,

       home:User2());
  }
}


class User2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
      body:SingleChildScrollView(
              child: Column(
          children: [
            Container(
            margin: EdgeInsets.all(10.0),
            child: Card(
              
              
              semanticContainer: true,
              elevation: 0.5,
              child: Row(children: [
                Image.asset("assets/user.png")
                  ,     
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "abc@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "logout",
                        style: TextStyle(fontSize: 15,color:Colors.purple),
                      )
                    
                    ])
                )],
        ),
      ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
                  child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                            child: Text("ACCOUNT INFORMATION",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  
                ),
              ),
              SizedBox(
                height: 20,

              ),
              TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Full Name"),
                          hintText: ("User"),
                          suffixIcon: Icon(Icons.search)),
                    ),
              TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Email"),
                          hintText: ("User@gmail.com"),
                          suffixIcon: Icon(Icons.search)),
                    ),      
               TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Phone"),
                          hintText: ("+900-786 01"),
                          suffixIcon: Icon(Icons.search)),
                    ),
                 TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Address"),
                          hintText: ("Newyork,Random street House No.72 "),
                          suffixIcon: Icon(Icons.search)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Gender"),
                          hintText: ("Male "),
                          suffixIcon: Icon(Icons.search)),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border:  InputBorder.none,
                          labelText: ("Date Of Birth"),
                          hintText: ("October 13,1999 "),
                          suffixIcon: Icon(Icons.search)),
                    ),


              ],
              
          ),
        ),
      )  ]),
          
        ),
    );
  }
}