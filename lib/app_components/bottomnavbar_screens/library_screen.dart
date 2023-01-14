import 'package:flutter/material.dart';

class Librarypage extends StatelessWidget {
  const Librarypage({Key? key}) : super(key: key);


  @override


  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor:  Color(0xff121212),
          expandedHeight: 100,
          pinned: true,
          floating: true,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 20,
                child: Text("F",
                    style: TextStyle(
                        color:  Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                    textAlign: TextAlign.left),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Your Library",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 23),
                  textAlign: TextAlign.left),
              Expanded(child: SizedBox()),
              Icon(Icons.search,size: 30,),
              Padding(padding: EdgeInsets.only(right: 20), ),
              Icon(Icons.add,size: 30,)
            ],
          ),
          shape: Border(bottom: BorderSide(width: 2, color: Colors.black),),
          flexibleSpace: FlexibleSpaceBar(
            expandedTitleScale: 1,
             titlePadding:  EdgeInsets.symmetric(horizontal: 16),
             centerTitle: true,
             background: Padding(
                padding:  EdgeInsets.only(top: 45, left: 16, bottom: 10),
               child:FiltersBuilder(list: kFilters) ,
            )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.only(
              top: 10,
              left: 16,
              right: 16,
              bottom: 130,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // recent filter
                Row(
                  children:  [
                    // icon// title
                    Text("Recently Played",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            fontSize: 15),
                        textAlign: TextAlign.left),
                    Icon(Icons.arrow_upward,color: Colors.white,size: 15,),
                    Icon(Icons.arrow_downward,color: Colors.white,size:15)
                  ],
                ),
                 SizedBox(
                  height: 15,
                ),
                // playlist
                 PlayListContainer(
                  title: 'To cook',
                  description: 'Playlist ',
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
                      ),
                      fit: BoxFit.cover),
                ),
                // playlist
                 PlayListContainer(
                  title: 'walking playlist',
                  description: 'Playlist ',
                  image: DecorationImage(
                      image: NetworkImage(
'https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'                      ),
                      fit: BoxFit.cover),
                ),
                 PlayListContainer(
                  title: 'Best of Billie',
                  description: 'Playlist ',
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.saymedia-content.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTg2MTA4Njk5MDQxODY2ODgx/top-5-hottest-young-singers-today.jpg'
                      ),
                      fit: BoxFit.cover),
                ),
                //add artist
                ArtistContainer(
                  title: 'Add artist',
                  backgroundColor: Color(0xff2E2F33),
                ),
                // Add podcast & event
                 PlayListContainer(
                  title: 'Add podcast & event',
                  color: Color(0xff2E2F33),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ArtistContainer extends StatelessWidget {
  const ArtistContainer({
    Key? key,
    required this.title,
    this.description,
    this.child,
    this.onTap,
    this.backgroundColor = const Color(0xff2E2F33),
    this.backgroundImage,
  }) : super(key: key);

  final String title;
  final String? description;
  final Widget? child;
  final ImageProvider<Object>? backgroundImage;
  final Function()? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        decoration:
        BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        margin:  EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img
            CircleAvatar(
              radius: 35,
              backgroundImage: backgroundImage,
              child: child,
              backgroundColor: backgroundColor,
            ),
            // text
            Padding(
              padding:  EdgeInsets.only(top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  Padding(
                    padding:  EdgeInsets.only(left: 16),
                    child: Text(title,
                        style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                        textAlign: TextAlign.left),
                  ),
                  // description
                  Padding(
                    padding:  EdgeInsets.only(left: 16),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        description ?? '',
                        style:  TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayListContainer extends StatelessWidget {
  const PlayListContainer({
    Key? key,
    required this.title,
    this.description,
    this.image,
    this.onTap,
    this.color = const Color(0xff2E2F33),
  }) : super(key: key);

  final String title;
  final String? description;
  final DecorationImage? image;
  final Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        margin:  EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img
            Container(
              width: 70,
              decoration: BoxDecoration(
                color: color,
                image: image,
              ),
            ),
            // text
            Padding(
              padding: EdgeInsets.only(top: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // title
                  Padding(
                    padding:  EdgeInsets.only(left: 16),
                    child: Text(title,
                        style:  TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 15),
                        textAlign: TextAlign.left),
                  ),
                  // description
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: SizedBox(
                      width: 200,
                      child: Text(
                        description ?? '',
                        style:  TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FiltersBuilder extends StatelessWidget {
  const FiltersBuilder({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: list[index].onTap,
            child: Padding(
              padding:  EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                margin:  EdgeInsets.only(top: 20),
                child: Text(list[index].title,
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                    textAlign: TextAlign.left),
              ),
            ),
          );
        }),
      ),
    );
  }
}
class FilterItem {
  String title;
  Function()? onTap;
  FilterItem({
    required this.title,
    this.onTap,
  });
}
List<FilterItem> kFilters = [
  FilterItem(
    title: 'Playlist',
  ),
  FilterItem(
    title: 'Artist',
  ),
];