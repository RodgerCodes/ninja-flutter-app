import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('My second app'),
      centerTitle: true,
      backgroundColor: Colors.purple[900],
    ),
    drawer: Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          DrawerHeader(
            decoration:BoxDecoration(
              color:Colors.purple[900]
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color:Colors.white,
                fontSize:24.0
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading:Icon(Icons.message),
            title: Text('Message'),
          ),
          ListTile(
            leading:Icon(Icons.account_circle),
            title:Text('Profile')
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Close'),
            onTap: () {
              Navigator.pop(context);
            },
          )
          
        ],
      ),
    ),

    body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             Container(
               color: Colors.blue,
               padding:EdgeInsets.all(40) ,
               child: IconButton(
                 onPressed: (){},
                 icon: Icon(
                   Icons.airplanemode_active
                 ),
               ),
             ),
             Container(
               color: Colors.greenAccent,
               padding: EdgeInsets.all(40),
               child: IconButton(
                 onPressed: (){},
                 icon: Icon(
                   Icons.unarchive
                 ),
               ),
             )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(40),
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.mood_bad
                ),
                color: Colors.deepOrange,
              ),
            ),
            Container(
              color: Colors.amber,
              padding: EdgeInsets.all(40),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.motorcycle),
              ),
            )
          ],
        ),
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.redAccent,
              padding: EdgeInsets.all(40),
              child: IconButton(icon: Icon(
                Icons.my_location
              ), onPressed: (){}),
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(40),
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.network_wifi
                ),
              ),
            )
          ],
        )
      ],
    ),
    
    floatingActionButton: FloatingActionButton(
      child:Text('Click', style:TextStyle(
        fontSize:16.0,
        color: Colors.white,
      )),
      onPressed: () {

      },
      backgroundColor: Colors.purple[900],
    ),
  );
  }
}