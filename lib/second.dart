
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'third.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});


  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child:
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: queryData.size.height * 0.33,
                      width: queryData.size.width,
                      child: Card(
                        child:
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          child: Container(
                            width: queryData.size.width,
                            height: queryData.size.height * 0.33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_7.png"),
                                fit: BoxFit.cover,
                              ),

                            ),

                            child: Container(
                                margin: const EdgeInsets.only(left: 22.0, right: 30.0, bottom: 25),
                                alignment: Alignment.bottomLeft,
                                child:
                                Text("Добро пожаловать в Казахстан!",  style: TextStyle(  fontFamily: 'Montserrat',fontSize: 25, color: Colors.white))),

                          ),


                        ),
                        margin: EdgeInsets.all(25),
                      ),
                    ),
                  ],
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: queryData.size.height * 0.33,
                      width: queryData.size.width * 0.5,
                      child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            child:
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              child: Container(
                                width: queryData.size.width * 0.45,
                                height: queryData.size.height * 0.15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/img.png"),
                                    fit: BoxFit.cover,
                                  ),

                                ),

                                child: Container(
                                    margin: const EdgeInsets.only(left: 18.0, right: 20.0, top: 90),
                                    child:
                                    Text("Города и области",  style: TextStyle(fontSize: 13, color: Colors.white))),

                              ),


                            ),
                            margin: EdgeInsets.only(left: 25, bottom: 9, top: 9,right: 9),
                          ),



                          Card(
                            child:
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              child: Container(
                                width: queryData.size.width * 0.45,
                                height: queryData.size.height * 0.15,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/img_2.png"),
                                    fit: BoxFit.cover,
                                  ),

                                ),

                                child: Container(
                                    margin: const EdgeInsets.only(left: 18.0, right: 20.0, top: 90),
                                    child:
                                    Text("Места размещения",  style: TextStyle(fontSize: 13, color: Colors.white))),

                              ),


                            ),
                            margin: EdgeInsets.only(left: 25, top: 5,right: 9),
                          ),

                        ],

                      ),

                    ),
                    SizedBox(

                      height: queryData.size.height * 0.33,
                      width: queryData.size.width* 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,


                        children: [
                          Card(
                            child:
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              child: Container(
                                width: queryData.size.width * 0.45,
                                height: queryData.size.height * 0.15,

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/img_1.png"),
                                    fit: BoxFit.cover,
                                  ),

                                ),

                                child: Container(
                                    margin: const EdgeInsets.only(left: 12.0, right: 20.0, top: 75),
                                   alignment: AlignmentDirectional.bottomStart,
                                    child:
                                    TextButton(
                                        child: Text("Турмаршруты",  style: TextStyle(fontSize: 13, color: Colors.white)),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => LocalJsonScreen(),
                                            ),
                                          );
                                        }
                                    )
                              ),

                              ),
                            ),
                            margin: EdgeInsets.only(right: 25, top: 9, bottom: 9),
                          ),
                          Card(
                            child:
                            ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(9)),
                              child: Container(
                                width: queryData.size.width * 0.45,
                                height: queryData.size.height * 0.15,

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/img_3.png"),
                                    fit: BoxFit.cover,
                                  ),

                                ),

                                child: Container(
                                    margin: const EdgeInsets.only(left: 18.0, right: 20.0, top: 90),
                                    child:
                                    Text("Гиды",  style: TextStyle(fontSize: 13, color: Colors.white))),

                              ),


                            ),
                            margin: EdgeInsets.only(right:25, top: 5 ),
                          ),
                        ],
                      ),


                    ),

                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: queryData.size.height* 0.1,
                      child:
                      Container(
                        child:
                        Text("Полезные статьи",  style: TextStyle(  fontFamily: 'Montserrat',fontSize: 30, color: Color(0xff2F2E41)),

                        ),
                        margin: EdgeInsets.only(top:20, right: 10,left: 25, bottom: 20),
                      ),
                    ),
                  ],
                ),
                Row(

                  children: [
                    SizedBox(
                      height: queryData.size.height* 0.4,
                      width: queryData.size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          Container(
                            child:
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(11)),

                                  child:Container(
                                    width: queryData.size.width* 0.4,
                                    height: queryData.size.height* 0.2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/img_4.png"),
                                      ),

                                    ),
                                  ),

                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 10 ),
                                    height: queryData.size.height* 0.02,
                                    child:
                                    Text("Курс валют",  style: TextStyle(fontFamily: 'Montserrat',fontSize: 17, color: Color(0xff2F2E41)))
                                ),
                              ],
                            ),
                            margin: EdgeInsets.only(left: 25, right: 10),


                          ),

                          Container(
                            child:
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(11)),
                                  child:
                                  Container(
                                    width: queryData.size.width* 0.4,
                                    height: queryData.size.height* 0.2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/img_5.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 10,top: 10, right: 0),
                                    height: queryData.size.height* 0.05,
                                    width: queryData.size.width*0.4,
                                    alignment: Alignment.bottomLeft,
                                    child:
                                    Text("Полезные номера телефонов",  style: TextStyle(fontFamily: 'Montserrat',fontSize: 17, color: Color(0xff2F2E41)))
                                ),

                              ],
                            ),
                            margin: EdgeInsets.only(right: 10),

                          ),




                          Container(
                            child:
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(11)),
                                  child:
                                  Container(
                                    width: queryData.size.width* 0.4,
                                    height: queryData.size.height* 0.2,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("assets/images/img_6.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 9,top: 10, right: 0),
                                    height: queryData.size.height* 0.02,
                                    width: queryData.size.width*0.4,
                                    alignment: Alignment.bottomLeft,
                                    child:
                                    Text("Резетка",  style: TextStyle(fontFamily: 'Montserrat',fontSize: 17, color: Color(0xff2F2E41)))
                                ),

                              ],
                            ),
                            margin: EdgeInsets.only(left:0,right: 0),

                          ),









                        ],
                      ),
                    ),
                  ],
                ),

              ],


            ),
        ),
        ),

      );

  }

}