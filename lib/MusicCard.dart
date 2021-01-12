import 'package:flutter/material.dart';
class MusicCard extends StatelessWidget {
  MusicCard({this.x,this.supject,this.title,this.number});
  final AssetImage x;
  final String supject,title;
  final int number;
  @override
  Widget build(BuildContext context) {
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
}
