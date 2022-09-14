import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giff_dialog/giff_dialog.dart';

class service extends StatelessWidget {
  const service({Key? key, required this.name,required this.image}) : super(key: key);
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:
     SizedBox(
          width: double.infinity,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child:
                  Image.asset(image),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(name,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Container(

                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
        ),

    );
  }
}




//************************************************************Cardlist**************************************
class cardlist extends StatelessWidget {
  const cardlist({Key? key, required this.titleimg, required this.c1img, required this.c2img, required this.c3img, required this.c1txt, required this.c2txt, required this.c3txt}) : super(key: key);
  final String titleimg;
  final String c1img;
  final String c2img;
  final String c3img;

  final String c1txt;
  final String c2txt;
  final String c3txt;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 100,
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width:double.infinity,
            height: 200,
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
            child: Image.asset(titleimg),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children:[
                        Card(
                        child: SizedBox(
                            width: 80,
                            height: 80,
                            child:  Stack(
                              children: <Widget>[
                                Image.asset(c1img),
                                Positioned.fill(
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                          ),
                        ),

                        Text(c1txt)
                    ]
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        children:[
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child:  Stack(
                                children: <Widget>[
                                  Image.asset(c2img),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),

                          Text(c2txt)
                        ]
                    ),
                  ),



              



            ],

        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        children:[
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child:  Stack(
                                children: <Widget>[
                                  Image.asset(c3img),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),

                          Text(c3txt)
                        ]
                    ),
                  ),

                  Container(

                    padding: EdgeInsets.all(10.0),
                    child: Column(
                        children:[
                          Card(

                            child: Container(
                              color: Colors.grey,
                              width: 80,
                              height: 80,
                              child:Stack(
                                children: <Widget>[
                                  Center(child: Icon(Icons.add)),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Text("More")
                        ]
                    ),
                  ),








                ],

              ),
      ]
      ),
        ]
      ),
      )
    );



  }
}


