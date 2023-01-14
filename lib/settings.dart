import 'package:flutter/material.dart';
class settingspage extends StatefulWidget {
  const settingspage({Key? key}) : super(key: key);

  @override
  State<settingspage> createState() => _settingspageState();
}

class _settingspageState extends State<settingspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 100,
      elevation: 0,
      backgroundColor: Color(0xff282829),
      leading: ElevatedButton.icon(
        onPressed: () => Navigator.of(context).pop(),
        icon:  Icon(Icons.arrow_back_ios_new , size: 30,color: Colors.white,),
        label:  Text(''),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
      ),

      // other stuff
      title: const Text('Settings' , style: TextStyle(
          color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
      ),),
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              height: 70,
              decoration:
              BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              margin:  EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
Padding(padding: EdgeInsets.only(left: 10))  ,
                  CircleAvatar(
                    radius: 30,
                    child: Text(
                      'F',style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                    ),
                    backgroundColor: Colors.greenAccent,
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 16),
                          child: Text('Fatima',
                              style:  TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                              textAlign: TextAlign.left),
                        ),
                        // description
                        Padding(
                          padding:  EdgeInsets.only(left: 16),
                          child: SizedBox(
                            width: 200,
                            child: Text(
                              'view profile',
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
                  Padding(padding: EdgeInsets.only(left: 90)),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            settingsoptions('Account', 290),
            settingsoptions('Data Saver', 265)
          ],
        ),
      ),
    );
  }
}
Row settingsoptions(String title,double paddingval){
  return Row(
    children: [
      Padding(padding: EdgeInsets.only(left: 20)),
      Text(title,style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20),
      textAlign: TextAlign.left
      ),
      Padding(padding: EdgeInsets.only(left: paddingval)),
      Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,)
    ],
  );
}
