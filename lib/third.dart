import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'second.dart';

class LocalJsonScreen extends StatefulWidget {
  const LocalJsonScreen({Key? key}) : super(key: key);

  @override
  State<LocalJsonScreen> createState() => ThirdPage();
}

class ThirdPage extends State<LocalJsonScreen> {
  List jsonData = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/GetAll.json');
    final data = await json.decode(response);
    setState(() {
      jsonData = data["result"];
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    readJson();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SecondPage(),
          ),
        );
          }, icon: Icon(Icons.arrow_back_ios, color:  Color(0xFF67A1D6),)),

          title: Text("ТУРМАРШРУТЫ",  style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.bold, color: Color(0xff2F2E41))),

      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Display the data loaded from data.json
            jsonData.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: jsonData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        child:
                        Container(
                          width: queryData.size.width,
                          height: queryData.size.height* 0.3,
                          child: Image.network(jsonData[index]["baseImagePath"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15, bottom:37,right: 0),
                          height: queryData.size.height* 0.07,
                          width: queryData.size.width,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(jsonData[index]["tourCategory"],  style: TextStyle(fontFamily: 'Montserrat',fontSize: 19, color: Color(0xff2F2E41))),
                              SizedBox(height: queryData.size.height* 0.01),
                              Row(
                                children: [
                                  Icon( Icons.star_border_outlined, size: 23,
                                      color:  Color(0xFFEF8629)),
                                  Text("4.6",  style: TextStyle(fontFamily: 'Montserrat',fontSize: 21, color: Color(0xff2F2E41))),

                                ],
                              )
                            ],
                          )
                      ),

                    ],
                  );



                },
              ),
            )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}