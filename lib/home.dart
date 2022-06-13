import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail '),
        centerTitle: true,
        actions: [
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Samah Ayman",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text("samahayman836@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5LWmWLUQVJQ4N_YPCJ9d6mueAslosEL5w2jsKT6wRkW_uQh2cDooCh6T8PqwuzJYUul0&usqp=CAU'),
              ),

            ),
            ListTile(
              title: Text("Sent"),
              leading: Icon(Icons.send),
            ),

            ListTile(
              title: Text("Inbox"),
              leading: Icon(Icons.inbox),
            ),
            ListTile(
              title: Text("Stared"),
              leading: Icon(Icons.star),
            ),
            ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text("Chat"),
              leading: Icon(Icons.chat),
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'chat'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: (){

        },
      ),
    );
  }
}