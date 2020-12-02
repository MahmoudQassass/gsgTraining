import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget myWidget({String title, String object, Icon icon}) {
    return Container(
      padding: EdgeInsets.all(3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                object,
                style: TextStyle(fontSize: 17, color: Colors.blue),
              ),
              if (icon != null) icon
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              margin: EdgeInsets.only(top: 40, left: 13, right: 13),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 27.0,
                      ),
                      Text('Edit Profile',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      Text(
                        'Save',
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 170,
                        width: 170,
                        child: Center(
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.6),
                                    BlendMode.dstATop),
                                image: AssetImage('assets/prof.png')))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35, right: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          thickness: 2,
                        ),
                        myWidget(
                            title: 'Name', object: 'Mahmoud Medhat Al-Qassass'),
                        Divider(
                          thickness: 2,
                        ),
                        myWidget(title: 'Address', object: 'Rafah'),
                        Divider(
                          thickness: 2,
                        ),
                        myWidget(
                            title: 'Email',
                            object: 'Mahmoud.m.alqassass@gmail.com'),
                        Divider(
                          thickness: 2,
                        ),
                        myWidget(title: 'Mobile', object: '+970-597536535'),
                        Divider(
                          thickness: 2,
                        ),
                        myWidget(
                            title: 'Birthday',
                            object: 'dd/mm/yy',
                            icon: Icon(
                              Icons.date_range,
                              color: Colors.blue,
                              size: 20,
                            )),
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
