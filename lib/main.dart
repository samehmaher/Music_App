import 'package:flutter/material.dart';

void main() {
  runApp(Music());
}

class Music extends StatelessWidget {
  Widget getMusic(AssetImage x, String supject, String title, int number) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20, top: 7.5, bottom: 7.5),
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      )),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    backgroundImage: x,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      supject,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(

                      Icons.play_arrow_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      'play',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Icon(
                      Icons.local_fire_department_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      number.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.red,
                Colors.purple,
                Colors.blue,
              ])),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        )),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      backgroundImage: AssetImage('images/amrprofile.jpg'),
                    ),
                  ),
                  Text(
                    'Amr Diab,s Songs',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.add_outlined,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
              Card(
                color: Colors.transparent,
                margin:
                    EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 10, right: 0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'My Music',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        'Shared',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text(
                        'Feed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              getMusic(
                  AssetImage('images/amr1.jpg'), 'Tamally m3ak', '2000', 2150),
              getMusic(
                  AssetImage('images/amr2.jpg'), 'Odam Merayetha', '2020', 125),
              getMusic(AssetImage('images/amr3.jpg'), 'Amaken El Sahar', '2020',
                  300),
              getMusic(AssetImage('images/amr4.jpg'), 'Hadded', '2018', 216),
              getMusic(AssetImage('images/amr5.jpg'), 'Qusad Einy', '2004', 48),
              getMusic(
                  AssetImage('images/amr6.jpg'), 'Kont Fe Baly', '2018', 78),
              getMusic(AssetImage('images/amr7.jpg'), 'Leila', '1988', 406),
              getMusic(
                  AssetImage('images/amr8.jpg'), 'Nour El Ain', '1996', 600),
              getMusic(
                  AssetImage('images/amr9.jpg'), 'Da Law Etsab', '2018', 756),
              getMusic(
                  AssetImage('images/amr10.jpg'), 'Youm Talat', '2020', 10034)
            ],
          ),
        ),
      ),
    );
  }
}
