import 'package:flutter/material.dart';

class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(left: 250)),
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Icon(Icons.camera_alt_outlined,size: 30,color: Colors.white,)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none),
                  hintText: 'What do you want to listen to?',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.search,size: 30,color: Colors.black,),
                  prefixIconColor:Colors.black,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Text(
                'Browse all',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
                  Row(
                    children: [
                      genres(Colors.cyan, ' Kpop'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.amberAccent, ' New releases')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.green, ' Hip-Hop'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.red, ' Rock')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.pink, ' Latin'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.deepPurpleAccent, ' Charts')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.grey, ' Workout'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.orangeAccent, ' Country')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.lime, ' Dance'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.blueAccent, ' Sleep')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.brown, ' Classical'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.deepOrange, ' Anime')
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      genres(Colors.cyan, ' Focus'),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      genres(Colors.pink, ' Party')
                    ],
                  ),
            ],
          ),
        ),
      )
    );
  }
}
Padding genres(Color color,String title){
  return Padding(padding: EdgeInsets.only(top: 10,left:5)
      ,child: Column(
      children: [
    Container(
    width: 180,
    height: 100,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child:  Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
  ),
  ),],),);
}
