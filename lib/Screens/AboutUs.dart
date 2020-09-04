import 'package:flutter/material.dart';
import 'package:hack_flutter/constants.dart';
import 'package:hack_flutter/services/auth.dart';
import 'package:hack_flutter/views/homepage.dart';

import 'AwarenessTips.dart';
import 'Ref.dart';
class AboutUs extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        title: Text("AboutUs"),
        backgroundColor: appbarc,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: containerC,

          ),
          child: Column(
            children: <Widget>[
              Text("We are from INDIA",
              style: TextStyle(
                fontSize: 20
              ),),
              SizedBox(
                height: 10,
              ),
              Text("Team HacksTter",
                style: TextStyle(
                    fontSize: 20
                ),),
              SizedBox(
                height: 10,
              ),
              Text("Sanjana Purohit"),
              Text("Krishna Sinroja"),
              Text("Dev Vora"),
              Text("Mit Patel"),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: backcolor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>  [

              DrawerHeader(
                decoration: BoxDecoration(
                    color: appbarc,
                    image: DecorationImage(
                        image: AssetImage("images/flame-web-security.png"),
                        fit: BoxFit.cover
                    )
                ),
              ),

              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AwarenessTips()));                },
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                title: Text('Users',

                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                leading: Icon(
                  Icons.description,
                  color: Colors.black,
                ),
                title: Text(
                  'News',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),

              ListTile(
                onTap:() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
                leading: Icon(
                  Icons.people,
                  color: Colors.black,
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ref()));
                },
                leading: Icon(
                  Icons.recent_actors,
                  color: Colors.black,
                ),
                title: Text(
                  'References',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
              ListTile(
                onTap: () async{
                  await _auth.signOut();

                },
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),

            ],
          ),
        ),

      ),
    );
  }
}
