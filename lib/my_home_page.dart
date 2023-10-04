import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> popMenu = [
    "Setting", "Logout", "Cart", "Search", "Add"
  ];

  String imgUrl = "https://images.unsplash.com/photo-1695153700315-6b0d9ce241a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.blue,
                Colors.pinkAccent,
              ],
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          )
        ),
        //leading: Icon(Icons.home),
        title: Text(
          "Project Group 2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context){
             return popMenu.map((e){
              return PopupMenuItem(child: Text(e));
              }).toList();
            },
          ),
        ],

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text(
            "Hello world!!!!",
            style: TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: "Pacifico",
            ),
          ),
          Text(
            "Chao xìn!!",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Image(
            image: NetworkImage(imgUrl),
          ),
          Image(
            image: AssetImage('assets/images/catcool.jpg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.blue,
                  Colors.pinkAccent,
                ]
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.home,
                    color: Colors.pinkAccent,
                    size: 50,
                  ),
                  onPressed: (){
                    print("Đã nhấn nút home!");
                    var snackBar = new SnackBar(
                        content: Text("Đã nhấn nút home"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.access_alarm_outlined,
                    color: Colors.amber,
                    size: 50,
                  ),
                  onPressed: (){
                    print("Đã nhấn nút time");
                    var snackBar = new SnackBar(
                        content: Text("Đã nhấn nút time"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    Icons.share,
                    color: Colors.lightGreenAccent,
                    size: 50,
                  ),
                  onPressed: (){
                    print("Đã nhấn nút share");
                    var snackBar = new SnackBar(
                        content: Text("Đã nhấn nút share"));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            )
          ),
          BottomNavigationBarItem(
            label: "Setting",
              icon: Icon(
                Icons.settings,
              )
          ),
          BottomNavigationBarItem(
              label: "Logout",
              icon: Icon(
                Icons.logout,
              )
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.amber,

        onPressed: (){

        },
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: ListView(
        scrollDirection: Axis.vertical,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,

            ),
            child: Text("hehe"),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context); // đóng drawer
            },
            title: Text("Hello"),
          ),
        ],
      )
    );
  }
}
