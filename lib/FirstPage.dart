import 'package:flutter/material.dart';
import 'MusicCard.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
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
            MusicCard(
              x: AssetImage('images/amr1.jpg'),
              supject: 'Tamally m3ak',
              title: '2000',
              number: 2150,
            ),
            MusicCard(
              x: AssetImage('images/amr2.jpg'),
              supject: 'Odam Merayetha',
              title: '2020',
              number: 210,
            ),
            MusicCard(
              x: AssetImage('images/amr3.jpg'),
              supject: 'Amaken El Sahar',
              title: '2020',
              number: 300,
            ),
            MusicCard(
              x: AssetImage('images/amr4.jpg'),
              supject: 'Hadded',
              title: '2018',
              number: 250,
            ),
            MusicCard(
              x: AssetImage('images/amr5.jpg'),
              supject: 'Qusad Einy',
              title: '2004',
              number: 48,
            ),
            MusicCard(
              x: AssetImage('images/amr6.jpg'),
              supject: 'Kont Fe Baly',
              title: '2018',
              number: 78,
            ),
            MusicCard(
              x: AssetImage('images/amr7.jpg'),
              supject: 'Leila',
              title: '1988',
              number: 406,
            ),
            MusicCard(
              x: AssetImage('images/amr8.jpg'),
              supject: 'Nour El Ain',
              title: '1996',
              number: 600,
            ),
            MusicCard(
              x: AssetImage('images/amr9.jpg'),
              supject: 'Da Law Etsab',
              title: '2018',
              number: 756,
            ),MusicCard(
              x: AssetImage('images/amr10.jpg'),
              supject: 'Youm Talat',
              title: '2020',
              number: 10034,
            ),

          ],
        ),
      ),
    );
  }
}
