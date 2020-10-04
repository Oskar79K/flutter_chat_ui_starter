import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String imageUrl;

  get uid => uid;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.brown[200],
                  child: ClipOval(
                    child: SizedBox(
                      width: 120.0,
                      height: 120.0,
                      child: (imageUrl!=null)
                          ? Image.network(imageUrl)
                          : Placeholder(fallbackHeight: 120.0, fallbackWidth: double.infinity),

                    ),
                  )
              ),
              Align(
                child: IconButton(
                  icon: Icon(Icons.photo_camera),
                  iconSize: 28.0,
                  onPressed: () {},

                ),
              ),

              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                      color: Colors.blueGrey[200],
                      elevation: 0.0,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.blueGrey[900]),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  RaisedButton(
                    color: Colors.brown[700],
                    elevation: 0.0,
                    child: Text(
                      "Upload pic",
                      style: TextStyle(
                          color: Colors.white),
                    ),
                    onPressed: () {},
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }



}