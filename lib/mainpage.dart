import 'package:flutter/material.dart';
import 'app_components/bottomnavbar.dart';
import 'settings.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);


  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
              backgroundColor: Colors.black87,
              elevation: 0,
              centerTitle: false,
              title: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        greeting(),
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                    Padding(padding: EdgeInsets.only(left: 90)),
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                     ),
                     Padding(padding: EdgeInsets.only(left: 15)),
                     Icon(
                       Icons.access_time,
                      size: 30,
                     ),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> settingspage()));
                        } ,
                        child:Icon(
                          Icons.settings,
                          size: 30,
                        ),
                      ) ,


                    ],
                  ),
                ],
              )),
        body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/liked.jpg'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              'Liked songs',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/IMG_2804.JPG'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              '1989',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/IMG_2805.JPG'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              'Midnights',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/IMG_2807.JPG'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              'Speak now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/IMG_2808.JPG'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              'Red',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                        width: 190,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Color(0xff282829),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/IMG_2809.JPG'),
                            ),
                            Padding(padding: EdgeInsets.only(left: 13)),
                            Text(
                              'Folklore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 30)),
                Text('Your top mixes',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names')
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 18)),
                Text('Made for you',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names')
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 18)),
                Text('Recently played',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names')
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 18)),
                Text('Spotify playlist',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names')
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 18)),
                Text('Best of artists',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names'),
                      mixes('assets/IMG_2832.JPG', 'artists names')
                    ],
                  ),
                ),
              ],
            )
        ),
        );
  }
}

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good morning';
  }
  if (hour < 17) {
    return 'Good afternoon';
  }
  return 'Good evening';
}

Padding mixes(String cardphoto,String artistsnames){
  return Padding(padding: EdgeInsets.only(top: 10, left: 8, bottom: 5, right: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage(cardphoto),fit: BoxFit.fill),
            color: Colors.white,
      ),
    ),
    Padding(padding: EdgeInsets.only(top: 5)),
    Text(
      artistsnames, style: TextStyle(fontSize: 15,
        fontWeight: FontWeight.w500,color: Colors.grey,
      overflow: TextOverflow.ellipsis,
    ),
      maxLines: 2,
    ),]
    ),
  );
}

